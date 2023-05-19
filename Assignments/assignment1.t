/*
2023.05.05
TEJ2O1-02
Assignment #1
Connor Groen
*/

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


% PROGRAM %

% Step 3/4
put "Hello there."
bottom
put "Step 3/4"
clearScreen

% Step 6 (a)
put "Hello"
put "there."
bottom
put "Step 6 (a)"
clearScreen

% Step 6 (b)
put "Hello " ..
put "there."
bottom
put "Step 6 (b)"
clearScreen

% Step 6 (c)
put "Hello " + "there."
bottom
put "Step 6 (c)"
clearScreen

% Step 6 (d)
put "Hello ", "there."
bottom
put "Step 6 (d)"
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
put "   0                WHITE"

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

colour (8)
put "   8                BRIGHTWHITE or GREY"

colour (9)
put "   9                BRIGHTBLUE"

color (10)
put "   10               BRIGHTGREEN"

color (11)
put "   11               BRIGHTCYAN"

color (12)
put "   12               BRIGHTRED"

color (13)
put "   13               BRIGHTMAGENTA or BRIGHTPURPLE"

color (14)
put "   14               YELLOW"

color (15)
put "   15               DARKGREY"

bottom
put "Exercise #1 -- Colour Name & Code List"
clearScreen

% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


put "   CODE             COLOUR"

colourback (0)
put "   0                WHITE"

colourback (1)
put "   1                BLUE"

colourback (2)
put "   2                GREEN"

colourback (3)
put "   3                CYAN"

colourback (4)
put "   4                RED"

colourback (5)
put "   5                MAGENTA or PURPLE"

colourback (6)
put "   6                BROWN"

colourback (7)
put "   7                BLACK"

colourback (8)
put "   8                BRIGHTWHITE or GREY"

colourback (9)
put "   9                BRIGHTBLUE"

colorback (10)
put "   10               BRIGHTGREEN"

colorback (11)
put "   11               BRIGHTCYAN"

colorback (12)
put "   12               BRIGHTRED"

colorback (13)
put "   13               BRIGHTMAGENTA or BRIGHTPURPLE"

colorback (14)
put "   14               YELLOW"

colorback (15)
put "   15               DARKGREY"

bottom
put "Exercise #1 -- Colour Back List"
clearScreen
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

put "   CODE             COLOUR"

colourback (0 + 16)
put "   0 + 16                BLACK"

colourback (1 + 16)
put "   1 + 16                KIND OF BLACK"

colourback (2 + 16)
put "   2 + 16                A BIT WHITER BLACK"

colourback (3 + 16)
put "   3 + 16                DARK DARK GREY"

colourback (4 + 16)
put "   4 + 16                DARK GREY (but not)"

colourback (5 + 16)
put "   5 + 16                KING OF DARK GREY"

colourback (6 + 16)
put "   6 + 16                LIGHT DARK GREY"

colourback (7 + 16)
put "   7 + 16                GREY (but not)"

colourback (8 + 16)
put "   8 + 16                A BIT LIKELIGHT GREY"

colourback (9 + 16)
put "   9 + 16                LIGHT GREY"

colorback (10 + 16)
put "   10 + 16               LIGHTER GREY"

colorback (11 + 16)
put "   11 + 16               LIGHTER LIGHTER GREY"

colorback (12 + 16)
put "   12 + 16               DARK WHITE"

colorback (13 + 16)
put "   13 + 16               LIGHT DARK WHITE"

colorback (14 + 16)
put "   14 + 16               LIGHTER DARK WHITE"

colorback (15 + 16)
put "   15 + 16               WHITE"


bottom
put "Exercise #1 -- Colour Back List + 16"
clearScreen

colour(15)
% The next line is used to
% mark the column numbers.
put "123456789*123456789*123456789"
colour(14)
put "GO LEAFS GO"
put "I LOVE TURING"
put "376"

bottom
put "Step 7 (a)"
clearScreen
% The next line is used to
% mark the column numbers.
colour(15)
put "123456789*123456789*123456789"
colour(14)
put 376
put 376:7
put 376:10

bottom
put "Step 7 (b)"
clearScreen
locate(12,35)
colour(brightred)
put "END OF PROGRAM :)"

