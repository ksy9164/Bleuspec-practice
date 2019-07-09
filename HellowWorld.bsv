package HellowWorld;
    // My first design in the cool Bluespec language
    String s = "Hello world";

    (* synthesize *)
    module mkAttempt(Empty);
        Reg#(UInt#(3)) ctr <- mkReg(0);
        
        rule say_hello;
            ctr <= ctr + 1;
            $display(s);
            if (ctr==4)
                $finish(0);
        endrule
    endmodule
endpackage
