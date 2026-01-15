module testbench;
// Parameters
parameter CLK_PERIOD = 10; // 10 time units for each clock cycle 

// Inputs
reg [31:0] g_InA0;
reg [31:0] g_InA1;
reg [31:0] g_InA2;
reg [31:0] g_InA3;
reg clk;

// Outputs
wire [127:0] g_outM;


// Instantiate the pipeline_multiplier module

pipeline_multi_4in_32bit dut(
.clk(clk),
.g_InA0(g_InA0),
.g_InA1(g_InA1),
.g_InA2(g_InA2),
.g_InA3(g_InA3),
.g_outM(g_outM)
);

// clock generation
always #5 clk = ~clk;

// Test stimulus

initial begin

// Initialize inputs 
g_InA0 = 2;
g_InA1 = 2;
g_InA2 = 2;
g_InA3 = 2;

// Apply inputs and wait for result
#50;

// Print the result

$display("Result: %d", g_outM);

// End simulation
$finish;

end

// Clock Initialization
initial begin
clk = 0;
#CLK_PERIOD;
end

// Stop the simulation after a certain duration
initial #200 $finish;
endmodule


