package ThreeRules;
    // My first design in the cool Bluespec language
    String s = "Hello world";

    (* synthesize *)
    module mkAttempt(Empty);
        Reg#(UInt#(3)) ctr <- mkReg(0);

        rule end_run (ctr==5);
            $finish(0);
        endrule

        rule say_hello (ctr<5);
            $display(s);
        endrule

        rule inc_ctr;
            ctr <= ctr + 1;
        endrule

    endmodule
endpackage
