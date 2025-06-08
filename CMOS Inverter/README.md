## CMOS-Inverter
A Simple CMOS inverter implemented in Cadence Virtuoso tool


A CMOS inverter is a fundamental logic gate in digital circuits, built using a p-channel (PMOS) and an n-channel (NMOS) MOSFET in a complementary configuration. It functions as a NOT gate, inverting the input signal.
### Operation of CMOS Inverter:

1. Input = High (1) → NMOS conducts, PMOS is off → Output = Low (0)
2. Input = Low (0) → PMOS conducts, NMOS is off → Output = High (1)

### Importance of each Analysis 
1. DC Analysis - Identifies logic threshold, noise margins, and output swing.
2. Transient Analysis - Measures rise time, fall time, and propagation delays (tpdr, tpdf, tpd)
3. Parametric Analysis - Evaluates how changes in load or device size affect delay, gain, and power
4. Corner Analysis - Ensures functionality across worst-case PVT (Process, Voltage, Temperature) conditions
