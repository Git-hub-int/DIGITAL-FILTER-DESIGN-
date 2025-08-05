1️⃣ # DIGITAL-FILTER-DESIGN-

COMPANY:- CODTECH IT SOLUTIONS 

NAME:- GARIMA VERMA

INTERN ID:- CT04DH2092

DOMAIN:- VLSI

DURATION:- 4 WEEKS 

MENTOR:- NEELA SANTOSH 

A digital filter processes a digital input signal to remove unwanted components (like noise) or extract useful parts (like specific frequency bands).

Unlike analog filters that use resistors, capacitors, and inductors, digital filters use mathematical algorithms implemented in software or digital hardware (like VLSI circuits).

▶️ Types of Digital Filters
1. FIR (Finite Impulse Response) Filter
2. IIR (Infinite Impulse Response) Filter

2️⃣Advantages of Digital Filters:-

▪️Highly accurate (no drift like analog components).

▪️Programmable (can change coefficients).

▪️Easy to implement in FPGA/ASIC using Verilog.

▪️Stable in case of FIR.

📁 Project Description:
This project implements a basic Finite Impulse Response (FIR) digital filter using Verilog HDL. It simulates the filter using Icarus Verilog (iverilog) and visualizes signal behavior using GTKWave.

🔸️Compilation & Simulation:

iverilog -o fir_sim fir_filter.v fir_filter_tb.v

vvp fir_sim

🔸️View Waveform in GTKWave:

gtkwave fir_filter.vcd

▶️Test Inputs:

| Time (ns) | x\_in value |
| --------- | ----------- |
| 0–10      | 0 (reset)   |
| 10–20     | 10          |
| 20–30     | 20          |
| 30–40     | 30          |
| 40–50     | 40          |
| 50–60     | 50          |

✅ Expected Behavior:
Each clock cycle computes the FIR equation using current and previous two inputs. You should see the output y_out increase and stabilize as the filter begins to accumulate real inputs.

OUTPUT:-
![Image](https://github.com/user-attachments/assets/289abe11-d2f1-4ccc-aeb6-aa67750eb643)
