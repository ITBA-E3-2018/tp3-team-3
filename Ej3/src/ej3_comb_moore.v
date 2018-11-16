//Combinational logic before flip flop for moore implementation
//INPUTS: FSM inputs (W) and current state (y0, y1)
//OUTPUT: next state (next_y0, next_y1)
//in addition, every input has is not counterpart




module first_comb_moore(
    W, _W,
    y0, _y0,
    y1, _y1,
    next_y0,
    next_y1
);

//=============Input Ports=============================
    input   W, _W, y0, _y0, y1, _y1;
//=============Output Ports============================
    output  next_y0,next_y1;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0, y1, _y1;
//=============Output Ports Data Type==================
    wire     next_y0,next_y1;
//=============Aux wires===============================
    wire aux1;
    wire aux2;

//*************Calculate next_y0***********************
    and (aux1,_y0,y1,W);
    and (aux2,y0,_y1,W);
    or (next_y0,aux1, aux2);

//*************Calculate next_y1***********************
    and (next_y1,_y0,_y1,W);

endmodule


//Combinational logic after flip flop for moore implementation
//INPUTS: current state (y0, y1)
//OUTPUT: FSM output(Zout)
//in addition, every input has is not counterpart 
module second_comb_moore(
    y0, _y0,
    y1, _y1,
    Zout
);

//=============Input Ports=============================
    input   y0, _y0, y1, _y1;
//=============Output Ports============================
    output  Zout;
//=============Input ports Data Type===================
    wire    y0, _y0, y1, _y1;
//=============Output Ports Data Type==================
    wire     Zout;

    and (Zout,_y0,y1);

endmodule 