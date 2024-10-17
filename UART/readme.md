[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC_BY--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

# Simple_UART - a UART demo for Sipeed Tang Primer 25K FPGA Boards

This project is a demo to test the UART communication between onboard debugger & FGPA, it base on Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html), it also integrated a GAO(Internal Logic Snalyzer) to facilitate users to observe how the UART works more directly.

Main features,

- Use UART to send and receive data and recieve it through the onboard debugger.
- Variable UART baudrate, default is 115200.
- IP-less design, simple and easy to transplant.

This demo now is only test on Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html), which mainchip is **GW5A-LV25M121NC1/l0** or **GW5AT-LV60PG484AES**.   

## Directory structure

```
| -- docs                         --> manuals and documentation
|    |`-- images				  --> picture resources  
| -- cam2dvi 
|    |	`-- cam2dvi.fs.zst		  --> prbuild bitstream(zipped)                       
|    |	`-- cam2dvi.gprj		  --> demo project
|    |	`-- cam2dvi.gprj.user	  --> project conf.
|    |-- src                      --> project sources 
|    |-- impl                     --> project config & implementation 

```

## Getting start

Please confirm that you have the following conditions:
- GOWIN IDE Version ≥ 1.9.10.01
- **DO NOT** use GOWIN Programmer version **1.9.10.02**, for this version contains many issues
- Sipeed [Tang Primer 25K](https://wiki.sipeed.com/hardware/en/tang/tang-primer-25k/primer-25k.html)
- USB-C date cable, use to connect the board to PC.  