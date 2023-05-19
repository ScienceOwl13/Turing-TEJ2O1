setscreen("msdos")
/*
 2023.05.25
 TEJ2O1-02
 Assignment #4
 Connor Groen
*/

% Useful Procedures
procedure bottomText (question : string)
    colour (black)
    colourback (white)
    locate (23, 1)
    put question
    var ch : string (1)
    locate (24, 1)
    put "Press ENTER to clear screen and continue."
    getch (ch)
    cls
end bottomText

% Step 1
put chr(65)
bottomText("Step 1")

% Step 2
put chr(66)
put chr(67)
put chr(1)
put chr(138)
put chr(188)
put chr(219)

bottomText("Step 2")

locate (1, 5)
put chr (218) ..
put repeat (chr (196), 25) ..
put chr (191)

for i : 2 .. 6
    locate (i, 5)
    put chr (179)
    locate (i, 31)
    put chr (179)
end for

locate (7, 5)
put chr (192) ..
put repeat (chr (196), 25) ..
put chr (217)

bottomText("Exercise #1 (a)")

locate (1, 5)
put chr (213) ..
put repeat (chr (205), 25) ..
put chr (184)

for i : 2 .. 6
    locate (i, 5)
    put chr (179)
    locate (i, 31)
    put chr (179)
end for

locate (7, 5)
put chr (212) ..
put repeat (chr (205), 25) ..
put chr (190)

bottomText("Exercise #1 (b)")

locate (1, 5)
put chr (218) ..
put repeat (chr (196), 25) ..
put chr (191)

for i : 2 .. 3
    locate (i, 5)
    put chr (179)
    locate (i, 31)
    put chr (179)
end for

locate (4, 5)
put chr (198) ..
put repeat (chr (205), 12) ..
put chr(209)..
put repeat (chr (205), 12) ..
put chr (181)

for i : 5 .. 12
    locate (i, 5)
    put chr (179)
    locate(i, 18)
    put chr (179)
    locate (i, 31)
    put chr (179)
end for

locate (13, 5)
put chr (192) ..
put repeat (chr (196), 12) ..
put chr (193)..
put repeat (chr (196), 12) ..
put chr (217)

bottomText("Exercise #1 (c)")
