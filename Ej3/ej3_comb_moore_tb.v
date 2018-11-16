module ej3_comb_moore_tb;

//=============Input=============================
    reg W, y0, y1;
    wire _W, _y0, _y1;

    not(_W,W);
    not(_y0,y0);
    not(_y1,y1);

//=============Output============================
    wire next_y0,next_y1, Zout;
    integer i, j, k;

first_comb_moore first_comb_test(W, _W, y0, _y0, y1, _y1, next_y0, next_y1);
second_comb_moore second_comb_test(y0, _y0, y1, _y1, Zout);

initial begin

$display("ej3 moore first combinational logic test");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            W=i;
            y0=j;
            y1=k;
            #1
            $display("********");
            $display("y0 = %d",y0);
            $display("y1 = %d",y1);
            $display("W  = %d",W);
            $display("next_y0 = %d",next_y0);
            $display("next_y1 = %d",next_y1);
        end
    end
end
$display("");
$display("ej3 moore second combinational logic test");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        y0=i;
        y1=j;
        #1
        $display("********");
        $display("y0 = %d",y0);
        $display("y1 = %d",y1);
        $display("Z = %d",Zout);
    end
end


$finish;
end


endmodule