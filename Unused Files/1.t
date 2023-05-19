% Procedures
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

% Step 4
put "Hello there."
bottom
put "Step 4 (a)"
clearScreen

% Step 6 (a)
put "Hello"
put "there."
bottom
put "Step 4 (b)"
clearScreen

% Step 6 (b)
put "Hello " ..
put "there."
bottom
put "Step 4 (c)"
clearScreen

% Step 6 (c)
put "Hello " + "there."
bottom
put "Step 4 (c)"
clearScreen

% Step 6 (d)
put "Hello ", "there."
bottom
put "Step 4 (d)"
clearScreen

% Step 6 (e)
% This program diplays text in different colours.
colour (1)
put "My school is GREAT!"
colour (2)
put "My school is GREAT!"
colour (3)
put "My school is GREAT!"
colourback (2)
put "My school is SUPERB!"
bottom
put "Step 6 (e)"
clearScreen


% Exercise 1:
put "   CODE             COLOUR"

colour (0)
put "   0                BLACK"

colour (1)
put "   1                BLUE"

colour (2)
put "   2                GREEN"

colour (3)
put "   3                CYAN"

colour (4)
put "   4                RED"

colour (5)
put "   5                MAGENTA or PURPLE"

colour (6)
put "   6                BROWN"

colour (7)
put "   7                BLACK"

colour(8)
put "   8                BRIGHTWHITE or GREY"

colour(9)
put "   9                BRIGHTBLUE"

