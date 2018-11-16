//Combinational logic before flip flop for moore implementation
//INPUTS: FSM inputs (W) and current state (y0, y1,y2)
//OUTPUT: next state (next_y0, next_y1, nezt_y2)
//in addition, every input has is not counterpart


module first_comb_moore(
    W, _W,
    y0, _y0,
    y1, _y1,
    y2, _y2,
    next_y0,
    next_y1,
    next_y2
);

//=============Input Ports=============================
    input   W, _W, y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports============================
    output  next_y0,next_y1,next_y2;
//=============Input ports Data Type===================
    wire    W, _W, y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports Data Type==================
    wire     next_y0,next_y1,next_y2;
//=============Aux wires===============================
    wire aux1;
    wire aux2;
    wire aux3;
    wire aux4;

//*************Calculate next_y0***********************
    and (next_y0,_y0,y1,_y2,_W);

//*************Calculate next_y1***********************
    and (aux1,_y0,y2,_W);
    and (aux2,_y0,y1,_W);
    or (next_y1, aux1, aux2);

//*************Calculate next_y2***********************
    and (aux3,_y0,_y1,_W);
    and (aux4,y0,y1,_y2,_W);
    or (next_y2, aux3, aux4);

endmodule


//Combinational logic after flip flop for moore implementation
//INPUTS: current state (y0, y1,y2)
//OUTPUT: FSM output(Zout)
//in addition, every input has is not counterpart 
module second_comb_moore(
    y0, _y0,
    y1, _y1,
    y2, _y2,
    Zout
);

//=============Input Ports=============================
    input   y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports============================
    output  Zout;
//=============Input ports Data Type===================
    wire    y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports Data Type==================
    wire     Zout;

//*************Calculate Zout**************************
    and (Zout,y0,y1,_y2);

endmodule 