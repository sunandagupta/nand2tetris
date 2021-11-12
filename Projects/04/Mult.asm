// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

    @R0
    D=M
    @num
    M=D         //num= RAM[R0]

    @R1
    D=M
    @n
    M=D         //n= RAM[R1]

    @i
    M=0         //i=0 initialization

    @sum
    M=0         //sum=0


(LOOP)
    @R2
    M=0         //reset R2

    @i
    D=M
    @n
    D=D-M
    @STOP
    D; JEQ      //if i==n, goto STOP

    @sum
    D=M             
    @num
    D=D+M 
    @sum
    M=D         //sum=sum+num


    @i
    M=M+1       //i=i+1
    
    @LOOP
    0; JMP      //go back to loop beginning


(STOP)
    @sum
    D=M
    @R2
    M=D         //R2= sum

(END)
    @END
    0; JMP      //inf end loop



