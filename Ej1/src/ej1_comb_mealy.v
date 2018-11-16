//Combinational logic before flip flop for mealy implementation
//INPUTS: FSM inputs (W) and current state (y0, y1)
//OUTPUT: next state (next_y0)
//in addition, every input has is not counterpart

module first_comb_mealy(
    W, _W,
    y0, _y0,
    y1, _y1,
    next_y0, 
    next_y1
);

//=============Input Ports=============================
    input   W, _W, y0, _y0, y1, _y1;
//=============Output Ports============================
    output  next_y0, next_y1;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0, y1, _y1;
//=============Output Ports Data Type==================
    wire    next_y0, next_y1;


//*************Calculate next_y0***********************
    and(next_y0, y1, _W);
//*************Calculate next_y1***********************
    and(next_y1, _y0, _W);

endmodule


//Combinational logic after flip flop for mealy implementation
//INPUTS: current state (y0)
//OUTPUT: FSM output(Zout)
//in addition, every input has is not counterpart 
module second_comb_mealy(
    W, _W,
    y0, _y0,
    y1, _y1,
    Zout
);

//=============Input Ports=============================
    input   W, _W, y0, _y0, y1, _y1;
//=============Output Ports============================
    output  Zout;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0, y1, _y1;
//=============Output Ports Data Type==================
    wire     Zout;

//*************Calculate Zout***********************
    and (Zout,y0,_y1,_W);

endmodule 