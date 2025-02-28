同济大学计算机系统实验课程设计(CS100225, 23Spring). 授课教师：Prof. Guo. 
移植到MIPS89指令集的μ-OS II系统与申优实验.

硬件部分代码在OpenMIPS原始代码上改造，可以稳定运行在**50Mhz**，满足实验III拓展需求，可与如下外设控制交互：

- GPIO
- UART
- Flash
- SDRAM
- VGA（仅支持ASCII字符显示）
- 八段数码管
- **PS2协议的** 键盘/鼠标

μ-OS II系统部分包含实验二下板系统与和本人实现的洞穴壁障游戏系统

**需注意：**

1. μ-OS II系统**必须**在Ubuntu环境中编译，**不要尝试**将其迁移到Windows中开发
2. 本项目没有经过重新git的流程验证，可能不能直接复现，μ-OS II系统部分代码自查有缺失，有问题可参考Lingbai Kong的computer-system攻略[https://github.com/lingbai-kong/computer-system] 和文档附的实验报告。

实验效果：

- 游戏过程中

![game1](figures\game1.jpg)

- 游戏结束：

  ![game2](figures\game2.jpg)



Prof. Guo的课程在23春季被分为三个实验：

- **实验一：**改造54 条指令cpu，支持到89 条，实现CP0、异常处理
- **实验二**：增加 Wishbone 总线， GPIO 、 UART 、 Flash 控制器、SDRAM 控制器。 利用 Ubuntu 上建立交叉编译环境 对 μC/OS II 系统进行改写、编译。
- **实验三**：在系统上实现一个自己的应用程序

其中实验一无需验收，只验收实验二和实验三，如果无法复现也可以使用编译好的bin文件直接下板。
