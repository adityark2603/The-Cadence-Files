# 6-Transistor-SRAM
A Static-Random Access Memory (SRAM) built using 6 transistors in Cadence Virtuoso tool

**6T SRAM (Six-Transistor Static Random Access Memory)** is a type of SRAM cell that consists of **six transistors** per bit of storage. It is widely used in **high-speed cache memory** in processors due to its **low power consumption and high performance**.

### **Structure:**
- **Two cross-coupled inverters** (4 transistors) form a **bistable latch** to store a bit.
- **Two access transistors** control read and write operations, connected to the **bit lines** and activated by the **word line**.

### **Operation:**
1. **Write:** The word line activates, and data is written by forcing the bit lines.
2. **Read:** The word line activates, allowing the stored value to be read through the bit lines.

### **Advantages:**
- **Fast read/write operations**
- **Low power consumption** (compared to DRAM)
- **No need for refresh cycles** (unlike DRAM)

### **Disadvantages:**
- **Larger area per bit** (compared to DRAM)
- **Lower density** due to the 6-transistor design

6T SRAM is widely used in **CPU caches, GPUs, and high-speed memory applications** where performance is critical. 
