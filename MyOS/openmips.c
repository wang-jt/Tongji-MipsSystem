#include "includes.h"

#define BOTH_EMPTY (UART_LS_TEMT | UART_LS_THRE)

#define WAIT_FOR_XMITR \
        do { \
                lsr = REG8(UART_BASE + UART_LS_REG); \
        } while ((lsr & BOTH_EMPTY) != BOTH_EMPTY)

#define WAIT_FOR_THRE \
        do { \
                lsr = REG8(UART_BASE + UART_LS_REG); \
        } while ((lsr & UART_LS_THRE) != UART_LS_THRE)

#define TASK_STK_SIZE 256

OS_STK TaskStartStk[TASK_STK_SIZE];

char Info[103]={0xC9,0xCF,0xB5,0xDB,0xCB,0xB5,0xD2,0xAA,0xD3,0xD0,0xB9,0xE2,0xA3,0xAC,0xD3,0xDA,0xCA,0xC7,0xBE,0xCD,0xD3,0xD0,0xC1,0xCB,0xB9,0xE2,0x0D,0x0A,0xC9,0xCF,0xB5,0xDB,0xCB,0xB5,0xD2,0xAA,0xD3,0xD0,0xCC,0xEC,0xBF,0xD5,0xA3,0xAC,0xD3,0xDA,0xCA,0xC7,0xBE,0xCD,0xD3,0xD0,0xC1,0xCB,0xCC,0xEC,0xBF,0xD5,0x0D,0x0A,0xC9,0xCF,0xB5,0xDB,0xCB,0xB5,0xD2,0xAA,0xD3,0xD0,0xC2,0xBD,0xB5,0xD8,0xBA,0xCD,0xBA,0xA3,0xD1,0xF3,0xA3,0xAC,0xD3,0xDA,0xCA,0xC7,0xBE,0xCD,0xD3,0xD0,0xC1,0xCB,0xC2,0xBD,0xB5,0xD8,0xBA,0xCD,0xBA,0xA3,0xD1,0xF3,0x0D};

void uart_init(void)
{
        INT32U divisor;
 
         /* Set baud rate */
	
        divisor = (INT32U) IN_CLK/(16 * UART_BAUD_RATE);

        REG8(UART_BASE + UART_LC_REG) = 0x80;
        REG8(UART_BASE + UART_DLB1_REG) = divisor & 0x000000ff;
        REG8(UART_BASE + UART_DLB2_REG) = (divisor >> 8) & 0x000000ff;
        REG8(UART_BASE + UART_LC_REG) = 0x00;
        
        
        /* Disable all interrupts */
       
        REG8(UART_BASE + UART_IE_REG) = 0x00;
       
 
        /* Set 8 bit char, 1 stop bit, no parity */
        
       REG8(UART_BASE + UART_LC_REG) = UART_LC_WLEN8 | (UART_LC_ONE_STOP | UART_LC_NO_PARITY);
        
  
        uart_print_str("UART initialize done ! \n");
	return;
}

void uart_putc(char c)
{
        unsigned char lsr;
        WAIT_FOR_THRE;
        REG8(UART_BASE + UART_TH_REG) = c;
        if(c == '\n') {
          WAIT_FOR_THRE;
          REG8(UART_BASE + UART_TH_REG) = '\r';
        }
        WAIT_FOR_XMITR;  
  
}

void uart_print_str(char* str)
{
       INT32U i=0;
       OS_CPU_SR cpu_sr;
       OS_ENTER_CRITICAL()
       
       while(str[i]!=0)
       {
       	uart_putc(str[i]);
        i++;
       }
        
       OS_EXIT_CRITICAL()
        
}

void gpio_init()
{
	REG32(GPIO_BASE + GPIO_OE_REG) = 0xffffffff;
	REG32(GPIO_BASE + GPIO_INTE_REG) = 0x00000000;
	gpio_out(0x0f0f0f0f);
	uart_print_str("GPIO initialize done ! \n");
        return;
}

void gpio_out(INT32U number)
{
	REG32(GPIO_BASE + GPIO_OUT_REG) = number;
}

INT8U uart_getc(){
	INT8U lsr = REG8(UART_BASE + UART_LS_REG);
	if(!(lsr & 1)) return 0;
	INT8U tmp = REG8(UART_BASE);
	return tmp;
}

INT32U gpio_in()
{
	INT32U temp = 0;
	temp = REG32(GPIO_BASE + GPIO_IN_REG);
	return temp;
}

void OSInitTick(void)
{
    INT32U compare = (INT32U)(IN_CLK / OS_TICKS_PER_SEC);
    
    asm volatile("mtc0   %0,$9"   : :"r"(0x0)); 
    asm volatile("mtc0   %0,$11"   : :"r"(compare));  
    asm volatile("mtc0   %0,$12"   : :"r"(0x10000401));
    //uart_print_str("OSInitTick Done!!!\n");
    
    return; 
}

#define G_WINDOW 7
#define G_Y 45
#define G_X 96
#define G_JMP 4
#define G_BLOCK '#'
#define G_EMPTY '.'
#define G_PERSON 127
INT32U rand_seed = 1;
INT32U myrand() {
    rand_seed = rand_seed * 1103515245 + 12345;
    return (INT32U)(rand_seed / 65536) % (G_JMP << 1 + 1);
}
INT8U map[G_X][G_Y] = {0};
INT8U t = 14, mx = 1, my = 14;
void Gwrite(INT8U x, INT8U y, INT8U c){
    map[x][y] = c;
	REG8(0x40000000 + x + (y+3) * 128) = c;
}
INT8U absminus(INT8U a, INT8U b){
	return a > b ? a - b: b - a;
}

char last_key = 0;
char keyboard_in(){
	INT32U c = REG32(0x50000000);
	char ch = (c & 0xff) | (c >> 24);
	if(last_key == ch) return 0;
	last_key = ch;
	return ch;
}

void Ginit(){
    INT8U x = 0, y = 0;
     for(x = 0; x < G_X; x++)
        for(y = 0; y < G_Y; y++)
            Gwrite(x, y, absminus(y,t) <= G_WINDOW ? G_EMPTY : G_BLOCK);
	char info[8] = "Time: 000";
	for(x = 0; x < 8; x++)
		REG8(0x40000000 + 4 + x + 128) = info[x];
	for(x = 0; x < 60; x++)
		REG8(0x40000000 + x) = ' ';
	Gwrite(mx, my, G_PERSON);
}

void GTimeUpdate(INT8U time){
	REG8(0x40000000 + 10 + 128) = (time / 100) + '0';
	REG8(0x40000000 + 11 + 128) = ((time / 10) % 10) + '0';
	REG8(0x40000000 + 12 + 128) = time % 10 + '0';
}

INT8U Gupdate(){
    INT8U x = 0, y = 0;
    for(x = 1; x < G_X; x++)
        for(y = 0; y < G_Y; y++){
			Gwrite(x - 1, y, map[x][y] == G_PERSON ? G_EMPTY : map[x][y]);
			if(x == mx + 1 && y == my){
				if(map[x][y] == G_BLOCK)
					return 1;
				Gwrite(mx, my, G_PERSON);
			}
		}
    INT8U r = myrand();
    if(t + r > G_JMP + 1 + G_WINDOW && t + r < G_Y - G_JMP - G_WINDOW - 1)
        t = t + r - G_JMP;
    for(y = 0; y < G_Y; y++)
        Gwrite(95, y, absminus(y,t) <= G_WINDOW ? G_EMPTY : G_BLOCK);
	if(map[mx][my] == G_BLOCK)
		return 1;
	
	return 0;
}

INT8U Gmove(INT8U p){
	if(p == 1){
		if(map[mx][my - 1] == G_BLOCK){
			return 1;
		} else {
			Gwrite(mx, my, G_EMPTY);
			Gwrite(mx, my-1, G_PERSON);
			my -= 1;
		}
	}else if(p == 2){
		if(map[mx][my + 1] == G_BLOCK){
			return 1;
		} else {
			Gwrite(mx, my, G_EMPTY);
			Gwrite(mx, my+1, G_PERSON);
			my += 1;
		}
	} else if(mx > 0 && p == 3){
		if(map[mx - 1][my] == G_BLOCK){
			return 1;
		} else {
			Gwrite(mx-1, my, G_EMPTY);
			Gwrite(mx, my, G_PERSON);
			mx -= 1;
		}
	} else if(p == 4){
		if(map[mx + 1][my] == G_BLOCK){
			return 1;
		} else {
			Gwrite(mx+1, my, G_EMPTY);
			Gwrite(mx, my, G_PERSON);
			mx += 1;
		}
	}
	return 0;
}

void Ggameover(){
	INT8U x, y;
	for(x = 40; x < 61; x++) // 50
		for(y = 20; y < 27; y++) // 23
			Gwrite(x, y, ' ');
	char show[10] = "Game Over";
	for(x = 0; x < 9; x++){
		Gwrite(x+50-4, 23, show[x]);
	}
}

void  TaskStart (void *pdata)
{
    INT32U count = 0;
    pdata = pdata;
    OSInitTick();   
    for (;;) {
       if(count <= 102)
    	{
         uart_putc(Info[count]);
         uart_putc(Info[count+1]);
        } else {
			break;
		}
        gpio_out(count);
        count=count+2;
        OSTimeDly(10);
    }
	//start
	INT8U ch = 0;
	INT32U i = 0, tick = 0;
	while(1){
		mx = 1, my = t;
		Ginit();
		for(i = 0;;i++){
			ch = keyboard_in() | uart_getc();
			if(ch == 'w' || ch == 'W' || ch == 's' || ch == 'S' || ch == 'a' || ch == 'A' || ch == 'd' || ch == 'D')
				if(Gmove((ch == 'w' || ch == 'W') ? 1 : (ch == 's' || ch == 'S') ? 2 : (ch == 'a' || ch == 'A') ? 3 : (ch == 'D' || ch == 'd') ? 4 : 0))
					break;
			int c = i / 300;
			tick = (5 - (c > 4 ? 4 : c));
			if(i % tick == 0)
				if(Gupdate())
					break;
			if(i % 100 == 1){
				GTimeUpdate(i / 100);
			}
			OSTimeDly(1);	
		}
		//GameOver
		Ggameover();
		for(i = 0;;i++){
			ch = uart_getc() || keyboard_in();
			if(ch) break;
			OSTimeDly(10);
		}
	}
}

int vga_window = 0;
void vga_show(char c){
	REG8(0x40000000 + (vga_window / 96) * 128 + vga_window % 96) = c;
	vga_window += 1;
}

void  TaskStartTest (void *pdata)
{
    INT32U count = 0;
    pdata = pdata;
    OSInitTick();
	for (;;) {
		char c = keyboard_in();
		if(c != 0){
			vga_show(c);
		}
		OSTimeDly(10);
	}
} 

void main()
{
  OSInit();
  uart_init();
  gpio_init();
  uart_print_str("2050254 Wang Juntao 2023.6");
  OSTaskCreate(TaskStart, 
	       (void *)0, 
	       &TaskStartStk[TASK_STK_SIZE - 1], 
	       0);
  OSStart();  
}
