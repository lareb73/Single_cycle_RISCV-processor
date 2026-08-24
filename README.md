# Single-Cycle RISC-V Processor — RTL to GDS

This project implements a **32-bit single-cycle RISC-V processor** and takes the design through the complete **RTL-to-GDSII ASIC flow**.

## Overview

The processor is designed using **Verilog RTL** and includes the essential components of a single-cycle RISC-V datapath, including:

* Program Counter (PC)
* Instruction Memory
* Register File
* ALU
* Control Unit
* RISC-V instruction decoding
* Single-cycle datapath

## RTL-to-GDS Flow

The design is taken through the ASIC implementation flow:

**RTL → Synthesis → Floorplanning → Placement → CTS → Routing → STA → GDSII**

The project uses **OpenLane/OpenROAD** with the **SkyWater SKY130 PDK** for physical design and GDSII generation.
<img width="1125" height="736" alt="WhatsApp Image 2026-08-22 at 5 45 11 PM" src="https://github.com/user-attachments/assets/b475c775-dd84-4804-9159-19f799d14f70" />
<img width="823" height="656" alt="WhatsApp Image 2026-08-22 at 5 44 44 PM" src="https://github.com/user-attachments/assets/b6ba0ec1-9932-4b45-bea0-2bddbbf3dca3" />

## Tools & Technologies

* Verilog HDL
* OpenLane
* OpenROAD
* Yosys
* SKY130 PDK
* RTL Simulation
* Static Timing Analysis (STA)

## Project Structure

```text
Single-Cycle-RISC-V/
├── rtl/          # Verilog RTL design
├── tb/           # Testbench
├── config/       # OpenLane configuration
├── runs/         # ASIC flow outputs
└── README.md
```

## Objective

The main objective is to understand how a **RISC-V processor designed at RTL level** is transformed into a physical **GDSII layout**, covering both digital design and ASIC physical implementation.

## Result

The final output of the project is the **GDSII layout** of the synthesized and physically implemented RISC-V processor.
