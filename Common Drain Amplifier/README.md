# Common Drain Amplifier (Source Follower)

A **Common Drain Amplifier** (also called a **Source Follower**) is a type of MOSFET amplifier where the **drain terminal is common** to both the input and output circuits.

### Key Points:

*   **Configuration:** Input is applied to the **gate**, output is taken from the **source**, and the **drain** is connected to a fixed DC voltage (usually $$V_{DD}$$).
*   **Voltage Gain:** Less than 1 (approximately unity), meaning it **does not amplify voltage** but provides **current gain**.
*   **Input Impedance:** Very **high**, making it suitable as a **buffer stage**.
*   **Output Impedance:** **Low**, allowing it to drive heavy loads.
*   **Phase Relationship:** Output is **in phase** with the input.
*   **Applications:** Used for **impedance matching**, **buffering**, and in **analog circuits** to drive the next stage without loading the previous one.

### Voltage Gain (approximate):

$$
A_v \approx \frac{g_m R_S}{1 + g_m R_S} \approx 1
$$

where $$g_m$$ = transconductance and $$R_S$$ = source resistance.
