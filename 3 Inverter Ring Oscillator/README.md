# 3-Inverter-Ring-Oscillator



A Ring Oscillator is a simple circuit that generates an oscillating signal (like a square wave) without requiring an external clock or resonator. It's commonly used in VLSI designs for process characterization, clock generation, or as a randomness source in TRNGs (True Random Number Generators).

**Features:**
1. Made using an odd number of inverters.
2. No external clock required.
3. Oscillation frequency depends on the number of stages and the inverter delay.
4. Can be implemented using CMOS, TTL, or other logic families.
5. Typically used on a chip due to its simplicity and compactness.
   
## Working of a 3-Inverter Ring Oscillator:
Consider 3 inverters connected in series, with the output of the last inverter fed back to the input of the first. <br>
Suppose the input is initially 0. <br>
First inverter: 0 → 1 <br>
Second inverter: 1 → 0 <br>
Third inverter: 0 → 1<br>
This 1 is again fed back to the input, restarting the cycle.<br>
The output toggles every time the signal propagates through the loop.<br>
The oscillation frequency depends on the propagation delay (tp) of each inverter.<br>

## Some important points while simulating in Cadence
1. 180nm technology used
2. For transient analysis, I simulated from 0-500 ns
3. Make sure that the output node is forced to have zero voltage
4. For parametric analysis:
  1. change capacitance value from 1pF to 'C_var' (temporary variable name)
  2. simulate parametric analysis from 1p to 10p with total steps as 10
