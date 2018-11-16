// module flip_flop_D (
// data  , // Data Input
// clk    , // Clock Input
// reset , // Reset input 
// q         // Q output
// );
// //-----------Input Ports---------------
// input data, clk, reset ; 

// //-----------Output Ports---------------
// output q;

// //------------Internal Variables--------
// reg q;

// //-------------Code Starts Here---------
// always @ ( posedge clk or negedge reset)
// if (~reset) begin
//   q <= 1'b0;
// end  else begin
//   q <= data;
// end

// endmodule //End Of Module dff_async_reset



//Modulo que simula el comportamiento de un flip flop D
//,de flancos ascedentes,con reset asincronico
module flip_flop_D(
    D,
    clk,
    Q,
    _Q, 
    reset_n
);


//=============Input Ports=============================
    input   D, clk, reset_n;
//=============Output Ports============================
    output  Q, _Q;
//=============Input ports Data Type===================
    wire    D, clk;
//=============Output Ports Data Type==================
    reg    Q;
    wire   _Q;

    not(_Q, Q);

always @(posedge clk) 
begin
 Q <= D; 
end

always @(reset_n)
    if (reset_n==0) begin
        Q=0;
        $display("reseteo el flip flop, Q = %d", Q);
    end

endmodule 