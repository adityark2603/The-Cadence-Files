module sipo_shift_register_4bit (
    input wire clk,         // Clock input
    input wire reset,       // Asynchronous reset
    input wire serial_in,   // Serial data input
    output wire [3:0] parallel_out  // 4-bit parallel output
);

    // Internal flip-flop outputs
    reg [3:0] shift_reg;
    
    // Sequential logic for the shift register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset all flip-flops to 0
            shift_reg <= 4'b0000;
        end else begin
            // Shift operation - input bit enters from the right (LSB)
            // shift_reg[3] gets shift_reg[2], shift_reg[2] gets shift_reg[1], etc.
            shift_reg <= {shift_reg[2:0], serial_in};
        end
    end
    
    // Connect the register to the output
    assign parallel_out = shift_reg;

endmodule
