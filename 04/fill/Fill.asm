// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//I paint every block in the screen not every pixel
//painting every pixel will take more work ot do

//code for making the screen white

//if KBD == 0 all white
(BREAKW)
@i
M = 0
(ALLWHITE)
@KBD
D = M
@BREAKB
D;JGT
@i
D = M
@SCREEN
D = A + D
A = D
M = 0
@i
M = M + 1
@ALLWHITE
0;JMP
//if KBD != 0 all black
//code for making the screen black
(BREAKB)
@i
M = 0
(ALLBLACK)
@KBD
D = M
@BREAKW
D;JEQ
@i
D = M
@SCREEN
D = A + D
A = D
M = -1
@i
M = M + 1
@ALLBLACK
0;JMP