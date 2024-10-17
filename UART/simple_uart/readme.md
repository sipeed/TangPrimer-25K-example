[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC_BY--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

# Simple_UART - a UART demo for Sipeed Tang Primer 25K FPGA Boards

This project is a demo to test the UART communication between onboard debugger & FGPA, it base on Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html), it also integrated a GAO(Internal Logic Snalyzer) to facilitate users to observe how the UART works more directly.

<img src="./docs/images/UART_GAO.png" width=400> <img src="./docs/images/UART_OUTPUT.png" width=400>

## Main features

- Use UART to send & receive data through the onboard debugger.
- Variable UART baudrate, default is 115200.
- IP-less design, simple and easy to transplant.

This demo now is only test on Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html), which mainchip is **GW5A-LV25M121NC1/l0** or **GW5AT-LV60PG484AES**.   

## Directory structure

```
| -- docs                    --> manuals and documentation
|    |`-- images             --> picture resources  
| -- simple_uart 
|    |	`-- uart.fs.7z      --> prbuild bitstream(zipped)                       
|    |	`-- uart.gprj		 --> demo project
|    |	`-- uart.gprj.user	 --> project conf.
|    |-- src                 --> project sources 
|    |-- impl                --> project config & implementation 

```

## Getting start

Please confirm that you have the following conditions:
- GOWIN IDE Version ≥ 1.9.9.03, [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html) supports the educational version of IDE, no need to apply for additional license.
- **DO NOT** use GOWIN Programmer version **1.9.10.02**, for this version contains many issues
- Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html)
- USB-C date cable, use to connect the board to PC. 

## How to use

Here are quick instructions for the more experienced,
- Download & Complie the project, then downloading the bitstream to you board.
- You can also try using the prebuilt bitstream, but remember to unzip it before downloading.
- Use serial port tools such as `mobaxterm` to view UART output.
- You can also try typing in the opened UART terminal, and the entered content will be displayed in the terminal.

## LEDs & button

This demo does not use LEDs
1 button **S1(H11)** use to reset the  UART transmission. 

## Development

If you want to modify the content of the UART output, please refer to the comments in the top file.

GAO is enabled by default in the project. You can try to use it to observe internal signals.