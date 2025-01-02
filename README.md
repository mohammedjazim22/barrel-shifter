Here’s an updated **README.md** tailored to your tools:

---

# Barrel Shifter Design in VLSI  

## Overview  
This project demonstrates the design and implementation of a **Barrel Shifter** in VLSI. A barrel shifter is a combinational circuit capable of shifting data left or right by a specified number of positions in a single clock cycle. It is widely used in high-speed data processing applications such as arithmetic operations and bit manipulations.  

## Features  
- Supports **n-bit data shifting**.  
- Implements both **left shift** and **right shift** operations.  
- Efficient design with minimal propagation delay.  
- Written in **Verilog HDL** and simulated using **GTKWave**.  

## Project Details  
- **Language**: Verilog  
- **Tools Used**:  
  - Code Editor: Visual Studio Code (VSC)  
  - Simulation: GTKWave  
  - Testbench for verification.  

## How It Works  
1. The barrel shifter takes an `n-bit` input and a shift amount (`log2(n)` bits).  
2. Depending on the control signals, it performs a logical left or right shift.  
3. The output is the shifted version of the input data.  

## Directory Structure  
```
Barrel_Shifter/
├── src/                # Verilog source files
│   ├── barrel_shifter.v
│   ├── barrel_shifter_tb.v  # Testbench
├── sim/                # Simulation results
│   ├── waveform.vcd
│   ├── gtkwave_config.gtkw  # GTKWave configuration file
├── docs/               # Documentation and reports
│   ├── design_report.pdf
│   ├── block_diagram.png
└── README.md           # Project description
```

## How to Use  
1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/barrel-shifter.git
   ```  
2. Navigate to the project directory:  
   ```bash
   cd barrel-shifter
   ```  
3. Open the Verilog code in Visual Studio Code for editing or review.
4. Simulate the design:  
   - Compile the Verilog files using your preferred simulator (e.g., Icarus Verilog):  
     ```bash
     iverilog -o barrel_shifter_sim src/barrel_shifter.v src/barrel_shifter_tb.v
     ```  
   - Run the simulation:  
     ```bash
     vvp barrel_shifter_sim
     ```  
   - View the waveform in GTKWave:  
     ```bash
     gtkwave waveform.vcd
     ```  

## Applications  
- **Arithmetic Operations**: Used in ALUs for high-speed calculations.  
- **Data Manipulation**: Useful in cryptography and encoding schemes.  
- **Embedded Systems**: Optimized data handling in processors.  

## Future Improvements  
- Add support for arithmetic shifts.  
- Explore power and area optimization techniques.  
- Implement the design on an FPGA and validate its performance.  

## References  
- [Digital Design by M. Morris Mano]  
- NPTEL Course: *Digital VLSI Design by Sudeb Gupta*  
