`timescale 1ns/1ps

module tb_rv32i_rformat_datapath;

    reg clk;
    reg rst;

    rv32i_rformat_datapath DUT (
        .clk(clk),
        .rst(rst)
    );

    wire signed [31:0] alu_result_signed;
    assign alu_result_signed = DUT.alu_result;

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, tb_rv32i_rformat_datapath); 
    end

    initial begin
        rst = 1;      // hold reset first
        #12 rst = 0;  // release reset after 1+ clock edges

        #120 $finish;
    end

    initial begin
        $display("time\tPC\tfunct3\tfunct7\trs1(r6)\trs2(r5)\talu_result(signed)\tregfile[7]");
        $monitor("%0t\t%0d\t%b\t%b\t%0d\t\t%0d\t\t%0d\t\t\t%0d",
                  $time, DUT.PC, DUT.funct3, DUT.funct7,
                  DUT.read_data1, DUT.read_data2,
                  alu_result_signed, DUT.regfile[7]);
    end

endmodule
