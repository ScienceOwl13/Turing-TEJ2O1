/*
 2023.05.11
 TEJ2O1-02
 Assignment #2
 Connor Groen
 */

% Useful Procedures
procedure resetColour
    colour (black)
    colourback (white)
end resetColour

procedure bottom
    resetColour
    locate (23, 1)
end bottom

procedure clearScreen
    resetColour
    var ch : string (1)
    locate (24, 1)
    put "Press ENTER to clear screen and continue"
    getch (ch)
    cls
end clearScreen


% Step 2
% This program displays an asterisk
% at row 12, column 40.
locate (12, 40)
put "*"
bottom
put "Step 2"
clearScreen


% Step 2 (a)
locate (5, 40)
put "*"
bottom
put "Step 2 (a)"
clearScreen

% Step 2 (b)
locate (22, 1)
put "*"
bottom
put "Step 2 (b)"
clearScreen

% Step 2 (c)
locate (1, 80)
put "*"
bottom
put "Step 2 (c)"
clearScreen

% Step 3
put repeat ("*", 10)
bottom
put "Step 3"
clearScreen

% Step 4
colour (4)
locate (1, 1)
put "*"
locate (2, 1)
put "*"
locate (3, 1)
put "*"

colour (14)
locate (1, 10)
put "*"
locate (2, 10)
put "*"
locate (3, 10)
put "*"
bottom
put "Step 4"
clearScreen

% Exercise #1 (a)

for i : 1 .. 3
    put repeat ("*", 10)
end for
bottom
put "Exercise #1 (a)"
clearScreen

% Exercise #1 (b)
put repeat ("*", 10)

for i : 1 .. 2
    put "*" ..
    put repeat (" ", 8) ..
    put "*"
end for
put repeat ("*", 10)
bottom
put "Exercise #1 (b)"
clearScreen

% Exercise 1 (c)
put repeat ("*", 10)
for i : 1 .. 4
    put repeat (" ", 4) ..
    put "*"
end for
bottom
put "Exercise # 1 (c)"
clearScreen

% Exercise 1 (d)
var space : int
space := 0

for i : 1 .. 4
    if space = 0 then
	put "*"
    else
	put repeat (" ", space) ..
	put "*"
    end if
    space := space + 1
end for
bottom
put "Exercise #1 (d)"
clearScreen

% Excercise #1 (3)

put ("*") ..
put repeat (" ", 7) ..
put ("*")

put ("*") ..
put (" ") ..
put ("*") ..
put repeat (" ", 3) ..
put ("*") ..
put (" ") ..
put ("*")


put ("*") ..
put repeat (" ", 3) ..
put ("*") ..
put repeat (" ", 3) ..
put ("*")

for i : 1 .. 3
    put ("*") ..
    put repeat (" ", 7) ..
    put ("*")
end for

bottom
put "Exercise #1 (e)"
clearScreen


% Exercise #2 --------------------------------------------------------
var positionC : int := 2 + 6
var positionO1 : int := 8 + 6 + 4
var positionN1 : int := positionO1 + 8 + 4
var positionN2 : int := positionN1 + 8 + 4
var positionO2 : int := positionN2 + 8 + 4
var positionR : int := positionO2 + 8 + 4

procedure letterC
    colour (brightblue)
    var cTB : string := "  * * *  "
    var c24 : string := "*        "

    locate (1, positionC)
    put cTB
    delay (60)
    for i : 2 .. 4
	locate (i, positionC)
	put c24
	delay (60)
    end for
    locate (5, positionC)
    put cTB
    delay (60)

end letterC


% Letter O
procedure letterO1
    colour (brightgreen)
    var oTB : string := "  * * *  "
    var o24 : string := "*       *"

    locate (1, positionO1)
    put oTB
    delay (60)
    for i : 2 .. 4
	locate (i, positionO1)
	put o24
	delay (60)
    end for
    locate (5, positionO1)
    put oTB
    delay (60)
end letterO1

% Letter N1
procedure letterN1
    colour (brightpurple)
    var nTB : string := "*       *"
    var n2 : string := "* *     *"
    var n3 : string := "*   *   *"
    var n4 : string := "*     * *"

    locate (1, positionN1)
    put nTB
    delay (60)

    locate (2, positionN1)
    put n2
    delay (60)

    locate (3, positionN1)
    put n3
    delay (60)

    locate (4, positionN1)
    put n4
    delay (60)

    locate (5, positionN1)
    put nTB
    delay (60)
end letterN1

% Letter N2
procedure letterN2
    colour (brightcyan)
    var nTB : string := "*       *"
    var n2 : string := "* *     *"
    var n3 : string := "*   *   *"
    var n4 : string := "*     * *"

    locate (1, positionN2)
    put nTB
    delay (60)

    locate (2, positionN2)
    put n2
    delay (60)

    locate (3, positionN2)
    put n3
    delay (60)

    locate (4, positionN2)
    put n4
    delay (60)

    locate (5, positionN2)
    put nTB
    delay (60)

end letterN2

% Letter O
procedure letterO2
    colour (green)
    var oTB : string := "  * * *  "
    var o24 : string := "*       *"

    locate (1, positionO2)
    put oTB
    delay (60)

    for i : 2 .. 4
	locate (i, positionO2)
	put o24
	delay (60)

    end for
    locate (5, positionO2)
    put oTB
    delay (60)

end letterO2

% Letter R
procedure letterR
    colour (cyan)
    var r1 : string := "* *      "
    var r2 : string := "*   *    "
    var r3 : string := "* *      "
    var rB : string := "*   *    "

    locate (1, positionR)
    put r1
    delay (60)

    locate (2, positionR)
    put r2
    delay (60)

    locate (3, positionR)
    put r3
    delay (60)
    for i : 4 .. 5
	locate (i, positionR)
	put rB
	delay (60)
    end for
end letterR


letterC
letterO1
letterN1
letterN2
letterO2
letterR

/*
 put "       " ..
 put repeat ("*", 63)
 bottom */



locate (7, 8)
for i : 1 .. 63
    put "*" ..
    delay (30)
end for

bottom
put "Exercise #2"
clearScreen

%--------------------------------------------------------------------------

var lines : array 1 .. 14 of string := init ("             *             ","       *    ***    *       ","        ***********        ","     *   *********   *     ","     **   *******   **   **"," ************************* ","***************************","  ***********************  ","     *****************     ","       *************       ","     *****************     ","    *        *        *    ","             *             ","             *             ")

for i : 1 .. 25
    colour (brightred)
    locate (i, 1)
    put repeat ("*", 20)
end for

for i : 1 .. upper (lines)
    locate (i + 4, 27)
    colour (brightred)
    put lines (i)
end for

for i : 1 .. 24
    colour (brightred)
    locate (i, 61)
    put repeat ("*", 20)
end for

bottom
put "Exercsie #3"
clearScreen


locate(12, 28)
colour(brightred)
put "ITS THE END OF THE PROGRAM"