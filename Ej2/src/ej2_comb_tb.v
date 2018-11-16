module ej2_comb_moore_tb;

//=============Input=============================
    reg W, y0, y1, y2;
    wire _W, _y0, _y1, _y2;

    not(_W,W);
    not(_y0,y0);
    not(_y1,y1);
    not(_y2,y2);

//=============Output============================
    wire next_y0,next_y1,next_y2,Zout; //for moore
    wire next_y0_, next_y1_,Zout_; //for mealy
    integer i, j, k, l;

first_comb_moore first_comb_test(W, _W, y0, _y0, y1, _y1, y2, _y2, next_y0, next_y1, next_y2);
second_comb_moore second_comb_test(y0, _y0, y1, _y1, y2, _y2, Zout);

first_comb_mealy first_comb_test_(W,_W,y0,_y0,y1,_y1,next_y0_,next_y1_);
second_comb_mealy second_comb_test_(W,_W,y0,_y0,y1,_y1,Zout_);


initial begin

//***MOORE***

$display("ej2 moore first combinational logic test");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            for (l = 0; l < 2; l = l + 1) begin
                W=i;
                y0=j;
                y1=k;
                y2=l;
                #1
                $display("********");
                $display("W  = %d",W);
                $display("y0 = %d",y0);
                $display("y1 = %d",y1);
                $display("y2 = %d",y2);
                $display("next_y0 = %d",next_y0);
                $display("next_y1 = %d",next_y1);
                $display("next_y1 = %d",next_y2);
            end
        end
    end
end
$display("");
$display("ej2 moore second combinational logic test");
for (j = 0; j < 2; j = j + 1) begin
    for (k = 0; k < 2; k = k + 1) begin
        for (l = 0; l < 2; l = l + 1) begin
            y0=j;
            y1=k;
            y2=l;
            #1
            $display("********");
            $display("y0 = %d",y0);
            $display("y1 = %d",y1);
            $display("y2 = %d",y2);
            $display("Z = %d",Zout);
        end
    end
end

$display("");
$display("");
$display("");


//***MEALY***

$display("ej3 mealy first combinational logic test");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            y0=i;
            y1=j;
            W=k;
            #1
            $display("********");
            $display("y0 = %d",y0);
            $display("y1 = %d",y1);
            $display("W  = %d",W);
            $display("next_y0 = %d",next_y0_);
            $display("next_y1 = %d",next_y1_);
        end
    end
end
$display("");
$display("ej2 mealy second combinational logic test");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            y0=i;
            y1=j;
            W=k;
            #1
            $display("********");
            $display("y0 = %d",y0);
            $display("y1 = %d",y1);
            $display("W  = %d",W);
            $display("Zout = %d",Zout_);
        end
    end
end


$finish;
end


endmodule