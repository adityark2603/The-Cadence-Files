module sipo_shift_register_4bit_tb;

    // Testbench signals
    reg clk;
    reg reset;
    reg serial_in;
    wire [3:0] parallel_out;
    
    // Instantiate the Unit Under Test (UUT)
    sipo_shift_register_4bit uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period = 10 time units
    end
    
    // Test stimulus
    initial begin
        // Initialize inputs
        reset = 1;
        serial_in = 0;
        
        // Apply reset
        #10 reset = 0;
        
        // Test case: Input data sequence 1,0,1,1
        #10 serial_in = 1; // Clock cycle 1: Input first bit (1)
        #10 serial_in = 0; // Clock cycle 2: Input second bit (0)
        #10 serial_in = 1; // Clock cycle 3: Input third bit (1)
        #10 serial_in = 1; // Clock cycle 4: Input fourth bit (1)
        
        // Wait a few more clock cycles to observe the stable output
        #20;
        
        // Test case: Input data sequence 0,1,0,0
        serial_in = 0; // Clock cycle 5: Input first bit (0)
        #10 serial_in = 1; // Clock cycle 6: Input second bit (1)
        #10 serial_in = 0; // Clock cycle 7: Input third bit (0)
        #10 serial_in = 0; // Clock cycle 8: Input fourth bit (0)
        
        // Wait a few more clock cycles
        #20;
        
        // End simulation
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("Time = %0t, Reset = %b, Serial Input = %b, Parallel Output = %b", 
                 $time, reset, serial_in, parallel_out);
    end
    
    
endmodule
