# 32-Bit-Pipelined-Multiplier-Cadence-Implementation

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
