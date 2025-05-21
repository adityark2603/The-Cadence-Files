## Two-Stage Operational Amplifier
The two-stage op-amp consists of:
1. Differential Input Stage (1st stage) – provides high gain and differential input.
2. Gain Stage (2nd stage) – boosts the signal further and drives the load.

### Differential Input Stage
1. Transistors NM0 and NM1 form a differential pair.
2. PM0 and PM1 act as active loads (PMOS current mirrors).
3. I0 is a bias current source (20 µA) that sets the tail current for the differential pair.
4. Input signals VP and VN are applied to the gates of NM1 and NM0, respectively.

### Gain Stage
1. Transistor PM2 is the load for NM5, forming a common-source amplifier.
2. This stage provides additional voltage gain.
3. The output is taken at the drain of PM2, marked as Vout.

### Biasing Circuitry
1. NM2 and NM3 mirror the tail current and help bias the second stage.
2. Proper biasing ensures transistors operate in the saturation region.

### Compensation
A small capacitor C0 (2pF) is placed between the output of the first and second stages to ensure frequency compensation (typically Miller compensation), enhancing stability and phase margin.

### Output Load
C1 (2pF) represents a load capacitor, simulating parasitic or external loading.

### Results
1. Gain Margin - 38.73
2. Phase Margin - 66.32
