# TangPrimer-25K-example

- Need Gowin IDE Version > 1.9.9


## Example

### pmod_led

An example to drive the pmod leds.

## 例程征集活动
Tang Primer 25K 即将发布，支持PMOD及大容量SDRAM模块！  
现征集志愿者完善25K例程，任务奖励为 25K Dock一套加任务所使用的PMOD配件。   
有意者 发送邮件到support@sipeed.com, 标题为 “25K FPGA 例程征集活动”    
以下为征集的例程任务，请在发送的邮件里指明。  

1. 按键开关/LED/数码管 PMOD例程
   1. 在三个PMOD接口上，按顺序插上 按键开关模块，LED模块，数码管模块
   2. 数码管10进制显示，初始为0
   3. 按第1个按键，数码管自增1；按第2个按键，数码管自增2；按第3个按键，数码管自增4；按第4个按键，数码管自增8
   4. 拨码开关 二进制表示，映射到 LED指示灯上。如拨码开关二进制表示为3,则第3个LED亮
   5. 拨码开关最高位ON，则LED流水灯
2. 摄像头/HDMI
   1. 在PMOD接口上，按顺序插上 DVP摄像头模块（OV5640），HDMI模块
   2. 如果检测到摄像头模块，则将摄像头图像显示到HDMI显示器上
   3. 如果未检测到摄像头模块（拔掉），则HDMI显示器显示彩条图案
3. HUB75
   1. 在PMOD接口上，插上PMOD转HUB75模块，另一侧接两块64x64的LED点阵屏（sipeed提供）
   2. 实现SPI转HUB75接口，即单片机使用类似SPI屏时序向25K发送RGB565的图像数据，25K存储到显存后，按预设帧率显示到LED点阵屏
   3. 如果可以结合SDRAM模块更佳
4. 手柄/TF卡/HDMI/SDRAM
   1. 移植nestang项目到25K dock
   2. PMOD接口插手柄模块，TF卡模块，HDMI模块，40Pin接口插SDRAM模块
   3. 从TF加载游戏ROM，在HDMI上显示游戏画面，可以用手柄进行游戏


