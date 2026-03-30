`timescale 1ns/1ps  	 //时间精度
`define  WCLK_PERILOD 21   
`define  RCLK_PERILOD 49
module tb_async_fifo;

parameter  DATA_WIDTH = 8   ;
parameter  DATA_DEPTH = 64  ;


//==================<端口>==================================================
reg                              wclk         ;
reg                              wrstn        ;

reg                              rclk         ;
reg                              rrstn        ;

reg                              wren         ;
reg       [DATA_WIDTH-1:0]       wdata        ;

reg                              rden         ;
wire      [DATA_WIDTH-1:0]       rdata        ;

wire                             full         ;
wire                             empty        ;



//----------------------------------------------------------------------
//--    时钟信号和复位信号
//----------------------------------------------------------------------
initial begin
    wclk = 0;
    forever
        #(`WCLK_PERILOD/2) wclk = ~wclk;
end

initial begin
    rclk = 0;
    forever
        #(`RCLK_PERILOD/2) rclk = ~rclk;
end


initial begin
    wrstn = 0; 
    repeat(20) @(posedge wclk);
    wrstn = 1;
end

initial begin
    rrstn = 0; 
    repeat(20) @(posedge rclk);
    rrstn = 1;
end




//--------------------------------------------------------------------------
//--    模块例化
//--------------------------------------------------------------------------
async_fifo #(
    .DEPTH(DATA_DEPTH), 
    .WIDTH(DATA_WIDTH) 
)u_async_fifo
(
	.i_wclk   (  wclk      ) ,
    .i_wrstn  (  wrstn     ) ,
	.i_wren   (  wren      ) ,
    .i_wdata  (  wdata     ) ,
	.i_rclk   (  rclk      ) ,
    .i_rrstn  (  rrstn     ) ,
	.i_rden   (  rden      ) ,
    .o_rdata  (  rdata     ) ,
    .o_full   (  full      ) ,
    .o_empty  (  empty     ) 
);


//----------------------------------------------------------------------
//--    设计输入信号
//----------------------------------------------------------------------
initial begin
    wren  = 0 ;
    wdata = 0 ;
    repeat(100) @(posedge wclk);
    #0.5     ;
    wren = 1 ;
    repeat(64)@(posedge wclk) wdata = wdata + 1;
    wren = 0 ;
    repeat(100) @(posedge wclk);   
end


initial begin
    rden  = 0 ;
    repeat(100) @(posedge rclk);
    #0.5     ;
    rden = 1 ;
    repeat(64) @(posedge rclk);
    rden = 0 ;
    repeat(100) @(posedge rclk);
    $finish;
end


initial begin
    $fsdbDumpfile("async.fsdb");
    $fsdbDumpvars(0);
end



endmodule

