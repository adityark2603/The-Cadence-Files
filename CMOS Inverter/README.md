# CMOS-Inverter
A Simple CMOS inverter implemented in Cadence Virtuoso tool


A CMOS inverter is a fundamental logic gate in digital circuits, built using a p-channel (PMOS) and an n-channel (NMOS) MOSFET in a complementary configuration. It functions as a NOT gate, inverting the input signal.
## OPERATION:

Input = High (1) → NMOS conducts, PMOS is off → Output = Low (0)

Input = Low (0) → PMOS conducts, NMOS is off → Output = High (1)

In this project, the specifications I've used are:

(i) 90 nm technology (gpdk90 library)

(ii) Vdc = 1.2V

Rest all specifications were specific to the analysis done, either DC analysis or Transient analysis.

## PROCEDURE:
1. Open cadence virtuoso tool and design the CMOS inverter using the reference schematic.
2. Create an inverter symbol, to make analysis easier
3. Using the symbol, attach 4 pins (Vin, Vout, gnd, Vdd)
4. Launch ADE-L, perform DC analysis, & plot outputs
5. Launch ADE-L, perform Transient analysis, & plot outputs
6. Note down the 5 critical voltages from the graph (VOH, VOL, VIL, VIH, VTh)
7. Compare the graphical and calculated values of critical voltages
8. Launch Layout XL, and design the accurate layout for CMOS inverter
9. Run DRC and LVS, to check for no errors
10. Go on with fabrication
