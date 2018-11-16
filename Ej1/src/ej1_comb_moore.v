//Combinational logic before flip flop for moore implementation
//INPUTS: FSM inputs (W) and current state (y0, y1,y2)
//OUTPUT: next state (next_y0, next_y1, nezt_y2)
//in addition, every input has is not counterpart


module first_comb_moore(
    I,_I,
    S,_S,
    y0, _y0,
    y1, _y1,
    y2, _y2,
    next_y0,
    next_y1,
    next_y2
);

//=============Input Ports=============================
    input   I,_I,S,_S,y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports============================
    output  next_y0,next_y1,next_y2;
//=============Input ports Data Type===================
    wire    I,_I,S,_S,y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports Data Type==================
    wire   next_y0,next_y1,next_y2;
//=============Aux wires===============================
    wire aux1;
    wire aux2;
    wire aux3;
    wire aux4;
    wire aux5;
    wire aux6;
    wire aux7;
    wire aux8;
    wire aux9;
    wire aux10;
    wire aux11;
    wire aux12;
    wire aux13;
    wire aux14;


//*************Calculate next_y0***********************
    and (aux1,_I,S);
    and (aux2,y0,_I);
    and (aux3,y0,S);
    and (aux4,y2,I,_S);
    and (aux5,_y0,y1,_y2);
    or (next_y0, aux1, aux2, aux3, aux4, aux5);

//*************Calculate next_y1***********************
    and (aux6,_y0,_I,_S);
    and (aux7,y2,I,_S);
    and (aux8,_y0,y1,_y2);
    and (aux9,y0,I,S);
    and (aux10,y0,_y1,y2);
    or (next_y1, aux6, aux7, aux8, aux9, aux10);

//*************Calculate next_y2***********************
    and (aux11,_y0,y2,_S);
    and (aux12,_y0,_y1,_I,_S);
    and (aux13,_y0,_y1,I,S);
    and (aux14,y1,y2,I,S);
    or (next_y2, aux11, aux12, aux13, aux14);

endmodule


//Combinational logic after flip flop for moore implementation
//INPUTS: current state (y0, y1,y2)
//OUTPUT: FSM output(P1,P2)
//in addition, every input has is not counterpart 
module second_comb_moore(
    y0, _y0,
    y1, _y1,
    y2, _y2,
    P1,P2
);

//=============Input Ports=============================
    input   y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports============================
    output  P1,P2;
//=============Input ports Data Type===================
    wire    y0, _y0, y1, _y1, y2, _y2;
//=============Output Ports Data Type==================
    wire    P1,P2;
//=============Aux wires===============================
    wire aux1;
    wire aux2;
    wire aux3;
    wire aux4;


//*************Calculate P1****************************
    and (aux1,y1,y2);
    and (aux2,y0,_y1,_y2);
    or (P1, aux1, aux2);

//*************Calculate P2****************************
    and (aux3,y1,y2);
    and (aux4,y0,_y1,_y2);
    or(P2, aux3, aux4);

endmodule 