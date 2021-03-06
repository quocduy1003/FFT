module mem_w_real (clk, addr, wr_ena, data) ;
parameter DATA_WIDTH =  32;
input clk;
input [11:0] addr;
input wr_ena;
output [DATA_WIDTH-1:0] data;
reg    [DATA_WIDTH-1:0] data;
always@(posedge clk) begin 
    case(addr)
        0:  data   <=  32'b0_0000_0000_0000_0000_0000_0000_0000_000;
        1:  data   <=  32'b0_0111_1111_0000_0000_0000_0000_0000_001;//1
        2:  data   <=  32'b0_0111_1110_0000_0000_0000_0000_0000_010;//0.5   3f0
        3:  data   <=  32'b0_1000_0000_0000_0000_0000_0000_0000_011;//2   40
        4:  data   <=  32'b0_0111_1101_0000_0000_0000_0000_0000_100;//0.25    3e8
        5:  data   <=  32'b0_0111_1100_0000_0000_0000_0000_0000_101;//0.125    7e
        6:  data   <=  32'b0_0111_1111_0000_0000_0000_0000_0000_110;//1
        7:  data   <=  32'b0_0111_1110_0000_0000_0000_0000_0000_111;//0.5
        8:  data   <=  32'b0_1000_0000_0000_0000_0000_0000_0001_000;//2
        default: data <= 0;
    endcase
end

endmodule
