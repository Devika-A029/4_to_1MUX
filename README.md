# 4:1 Multiplexer (Verilog)

This project implements a 4-to-1 multiplexer using Verilog HDL. The multiplexer selects one of four input signals (`I0`, `I1`, `I2`, `I3`) based on a 2-bit selector (`sel`) and outputs the selected value.

## Files

- `mux_4to1.v`: Verilog module for the 4:1 multiplexer.
- `mux_4to1_tb.v`: Testbench to simulate and verify the functionality of the multiplexer.

## Module Details

### Inputs
- `I0`, `I1`, `I2`, `I3`: 1-bit data inputs
- `sel[1:0]`: 2-bit selector input

### Output
- `Y`: Output corresponding to the selected input

### Truth Table

| sel[1] | sel[0] | Y   |
|--------|--------|-----|
|   0    |   0    | I0  |
|   0    |   1    | I1  |
|   1    |   0    | I2  |
|   1    |   1    | I3  |

## Implementation

The multiplexer logic is implemented using either a `case` statement in an `always` block or nested ternary (`? :`) operators. Both approaches provide the same functionality.

## Sample Output
![image](https://github.com/user-attachments/assets/c466b0cc-d43e-4eda-af05-38b11da6f41b)
