module pipeline_multi_4in_32bit(
input clk,
input [31:0] g_InA0,
input [31:0] g_InA1,
input [31:0] g_InA2,
input [31:0] g_InA3,
output reg [127:0] g_outM);

// Pipeline registers
reg [63:0] stage1_result;
reg [63:0] stage2_result;
reg [127:0] stage3_result;

always @(posedge clk)
begin

// Pipeline stage 1

stage1_result <= g_InA0 * g_InA1;
end

always @(posedge clk)

begin
// Pipeline stage 2

stage2_result <= g_InA2 * g_InA3;
end

always @(posedge clk)

begin
// Pipeline stage 3

stage3_result <= stage1_result * stage2_result;
end

always @(posedge clk)
begin
// Pipeline stage 4: Final output

g_outM <= stage3_result;
end
endmodule
