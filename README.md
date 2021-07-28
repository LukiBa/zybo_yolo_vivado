# Zybo-Z7 Vivado project for YOLOv3-tiny using Intuitus hardware accelerator
Vivado 2017.4 project for YOLOv3-tiny application running on a Zybo-Z7-20 board. For CNN computation the Intuitus hardware accelerator IP is used. 
This project is a modification of the basic linux implementation for Zybo-Z7 by Digilent: 
<https://github.com/Digilent/Zybo-Z7-20-base-linux.git>

## Create project 
Vivado 2017.4 Tcl Shell:
````
cd project
vivado -mode batch -source create_project.tcl -tclargs --intuitus_ip_dir path_to_intuitus_ip --digilent_ip_dir path_to_digilent_ips
````

## Required IPs:
| Repo | purpose |note |
| ------ | ------ | ------ |
| digilent-repo | HDMI out | <https://github.com/Digilent/vivado-library.git> |
| MIPI CSI-2 RX Subsystem | CAM in |available from xilinx (requires purchased license) | 
| Intuitus | CNN | encrypted trial version comming soon (contact author) |

## Features: 
- [x] MIPI CSI-2 Camera input 
- [x] HDMI display output
- [x] CNN hardware accelerator 

## Utilization
| Resource | Utilization | Available | Utilizaiton %
| ------ | ------ | ------ | ------ |
| LUT |	40296 |	53200 |	75.74 |
| LUTRAM |	2150 | 17400 | 12.35 |
| FF | 61153 | 106400 | 57.47 |
| BRAM | 136 | 140 | 97.14 |
| DSP | 194 | 220 | 88.18 | 
| IO | 29 | 125 | 23.19 | 
| BUFG | 8 | 32 | 25.0 | 
| MMCM | 2 | 4 | 50.0 | 
|PLL | 1 | 4 | 25.0 |
