module ej3_moore_fsm(
    W,
    Zout,
    clk,
    reset_n
);

//=============Input Ports=============================
    input   W, clk, reset_n;
//=============Output Ports============================
    output  Zout;
//=============Input ports Data Type===================
    wire W, clk;
//=============Output Ports Data Type==================
    wire Zout;
//=============Aux wires===============================
    wire _W;
    wire y0;
    wire _y0;
    wire y1;
    wire _y1;
    wire next_y0;
    wire next_y1;

//=============Negate comb logic inputs================
    not(_W, W);
    not(_y0, y0);
    not(_y1, y1);


//=============Combinational logic blocks==============
    first_comb_moore first_c(
    W, _W,
    y0, _y0,
    y1, _y1,
    next_y0,
    next_y1
    );

    second_comb_moore second_c(
    y0, _y0,
    y1, _y1,
    Zout
    );

//=============State variables=========================
    flip_flop_D y0_ff(next_y0, clk, y0, _y0, reset_n);
    flip_flop_D y1_ff(next_y1, clk, y1, _y1, reset_n);

endmodule