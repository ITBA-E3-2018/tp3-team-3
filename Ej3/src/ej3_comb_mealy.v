//Combinational logic before flip flop for mealy implementation
//INPUTS: FSM inputs (W) and current state (y0)
//OUTPUT: next state (next_y0)
//in addition, every input has is not counterpart




module first_comb_mealy(
    W, _W,
    y0, _y0,
    next_y0
);

//=============Input Ports=============================
    input   W, _W, y0, _y0;
//=============Output Ports============================
    output  next_y0;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0;
//=============Output Ports Data Type==================
    wire     next_y0;


//*************Calculate next_y0***********************
    assign next_y0 = W;

endmodule


//Combinational logic after flip flop for mealy implementation
//INPUTS: current state (y0)
//OUTPUT: FSM output(Zout)
//in addition, every input has is not counterpart 
module second_comb_mealy(
    W, _W,
    y0, _y0,
    Zout
);

//=============Input Ports=============================
    input   W, _W, y0, _y0;
//=============Output Ports============================
    output  Zout;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0;
//=============Output Ports Data Type==================
    wire    Zout;

//*************Calculate Zout***********************
    and (Zout,_y0,W);

endmodule 