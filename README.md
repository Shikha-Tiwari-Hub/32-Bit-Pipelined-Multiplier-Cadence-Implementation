# 32-Bit-Pipelined-Multiplier-Cadence-Implementation

## 📌 Project Overview
4-Input 32-bit Unsigned Pipelined Multiplier\
This project implements a high-speed, hardware-efficient 4-input 32-bit unsigned multiplier using a pipelined architecture in Verilog. The design supports continuous data input and computes the final product of four unsigned 32-bit operands across multiple clock cycles. This multiplier is ideal for throughput-critical applications such as DSP and embedded processing.

# Design Overview:

## 1. Inputs and Outputs:

**Inputs:** Four 32-bit unsigned integers (in1, in2, in3, in4).​

**Output:** One 128-bit unsigned integer (final_result) representing the product of the four inputs.​

**Clock Signal:** A clock input (clk) synchronizes the pipeline stages.​

## 2. Pipeline Stages:

**Stage 1:** 
- Initial Multiplications
- Multiplies in1 with in2, and in3 with in4 in parallel.​
- Stores the resulting two 64-bit products in intermediate registers (stage1_ab and stage1_cd).​

**Stage 2:**
-Intermediate Registering
- Transfers the values from stage1_ab and stage1_cd to the next set of registers (stage2_ab and stage2_cd) to maintain data synchronization.​

**Stage 3:** 
- Final Multiplication
- Multiplies the values in stage2_ab and stage2_cd to produce the final 128-bit result (final_result).​

## 3. Operational Flow:

- On each clock cycle, new input values can be fed into the multiplier.​
- After an initial latency of three clock cycles (one for each pipeline stage), the pipeline reaches a steady state where it outputs a new 128-bit product every clock cycle.​
- This pipelined approach allows for overlapping operations, significantly increasing throughput compared to a non-pipelined multiplier.​

## 4. Computation:

If all inputs are set to 2, the computation proceeds as follows:​

**Stage 1:** Calculate 2 × 2 = 4 for both pairs, storing 4 in stage1_ab and stage1_cd.​

**Stage 2:** Transfer 4 from stage1_ab to stage2_ab, and from stage1_cd to stage2_cd.​

**Stage 3:** Compute 4 × 4 = 16, storing 16 in final_result.​

After three clock cycles, the output final_result will hold the value 16.

# 🔁 Design Flow
1. Design Specification and RTL Coding
2. Design Simulation Using the **Xcelium**
3. The Synthesis Flow with DFT Using **Genus**
4. The Test Stage
- Running the basic ATPG Flow in **modus** Test
5. The Equivalency Checking Stage
6. The Implementation Stage / Physical Design
7. Gate-Level Simulation
8. Timing Analysis and Debug Using **Tempus**

# 📁 Directory Structure

# 🧠 Learning Outcomes
- Practical understanding of pipelined datapath design
- Hands-on experience with Cadence RTL-to-GDSII flow
- Timing optimization through pipeline balancing


# 📊 Results
- Achieved timing closure at target clock frequency
- Improved throughput due to pipelining
- Clean post-route timing reports

# Acknowledgements
This project was carried out using **Cadence Tools** as part of academic learning and research work at
**Vivekananda Instutute of Professional Studies- Technical Campus**, **Department of Electronics Engineering (VLSI & Design Technology)**.
Special thanks to **Cadence Academic Network** for providing tool access and support.

# License
This project is licensed under the MIT License[https://mit-license.org/]
 © 2025 **Shikha Tiwari, Vivekananda Instutute of Professional Studies- Technical Campus** .
Developed using **Cadence EDA tools** for educational and research purposes.
