# The Equivalency Checking Stage
## What is Logic Equivalence Checking?
1. Logic equivalence checking is a process to ensure that the synthesized netlist is functionally 
equivalent to the original RTL design. Since synthesis involves complex optimizations and 
transformations, it is recommended to perform functional verification after synthesis.\
2. The Conformal®Equivalence Checking solutions are logical equivalence-checking tools that verify 
RTL, gate, or transistor-level designs.

## Objective: To run the basic logic Equivalence Checking flow for a design
The Conformal®Equivalence Checking solutions are logical equivalence-checking tools that verify 
RTL, gate, or transistor-level designs.

Invoking Equivalence Checking
```bash
lec -XL -nogui -color -64 -dofile pipelined_mul.do
```
## Challenges Faced in Equivalence Checking
<img width="400" height="400" alt="Screenshot 2025-12-06 020134" src="https://github.com/user-attachments/assets/c0f9cfc3-0de6-4c70-9096-79f25a57c8f7" />\
Equivalence checking failed due to synthesis optimizations and DFT insertion, not due to RTL functional errors.

## Key reasons:
- Extra scan output (dft_sdo_1) added in synthesized netlist
- 64 unmapped DFFs caused by pipeline register retiming
- Additional scan-related PI/PO in revised design
- Pipeline latency mismatch between RTL and netlist

## Conclusion:
The mismatch was due to DFT logic and pipelining effects. After ignoring scan signals and enabling sequential, latency-aware equivalence checking, the design is functionally equivalent.

## Equivalence PASS
<img width="400" height="500" alt="Screenshot 2025-12-06 132203" src="https://github.com/user-attachments/assets/5a380436-64d2-43b6-a623-27258e38e301" />
<img width="500" height="400" alt="Screenshot 2025-12-06 133841" src="https://github.com/user-attachments/assets/d4d4b8b8-bf84-4812-a539-250ff0c0e381" />

