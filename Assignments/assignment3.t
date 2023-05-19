/*
 2023.05.17
 TEJ2O1-02
 Assignment #3
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

% procedure resetColour
%     colour (black)
%     colourback (white)
% end resetColour

% procedure bottom
%     resetColour
%     locate (23, 1)
% end bottom

% procedure clearScreen
%     resetColour
%     var ch : string (1)
%     locate (24, 1)
%     put "Press ENTER to clear screen and continue"
%     getch (ch)
%     cls
% end clearScreen

% Worksheet

% Step 1
var Name : string
Name := "Norbella"
put "Hello ", Name
bottomText ("Step 1")

% Step 1: Exercise #1
Name := "Connor"
put "Hello ", Name
bottomText ("Step 1: Exercise #1")

% Step 1: Exercise #2
Name := "Connor"
put "Hello " ..
colour (brightgreen)
put Name
bottomText ("Step 1: Exercise #2")

% Step 1: Exercise #3 (a)
colour (brightblue)
Name := "Connor Groen"
put Name
bottomText ("Step 1: Exercise #3 (a)")

% Step 1: Exercise #3 (b)
colour (brightcyan)
Name := "Connor \nGroen"
put Name
bottomText ("Step 1: Exercise #3 (b)")

% Step 1: Exercise #4
Name := "Connor Groen"
locate (12, 34)
colour (brightpurple)
put Name
bottomText ("Step 1: Exercise #4")

% Step 3
% var Name : string
var Age : int

Age := 16
Name := "Philbert Quiggley"

put "My name is ", Name
put "I am ", Age, " years old."
bottomText ("Step 3")


% Step 3 (again)
var Sales_Tax, Selling_Price, Total_Price : real

Selling_Price := 259.99
Sales_Tax := Selling_Price * 0.08
Total_Price := Selling_Price + Sales_Tax

put "The sellling price is: $", Selling_Price : 0 : 2
put "The sales tax is :     $", Sales_Tax : 0 : 2
put "The total price is:    $", Total_Price : 0 : 2
bottomText ("Step 3 (again)")

% Exercise #1
Selling_Price := 599.99
Sales_Tax := Selling_Price * 0.08
Total_Price := Selling_Price + Sales_Tax

put "The sellling price is: $", Selling_Price : 0 : 2
put "The sales tax is :     $", Sales_Tax : 0 : 2
put "The total price is:    $", Total_Price : 0 : 2
bottomText ("Step 3 (again): Exercise #1 (a)")

% Exercise #2

Selling_Price := 259.99
Sales_Tax := Selling_Price * 0.10
Total_Price := Selling_Price + Sales_Tax

put "The sellling price is: $", Selling_Price : 0 : 2
put "The sales tax is :     $", Sales_Tax : 0 : 2
put "The total price is:    $", Total_Price : 0 : 2
bottomText ("Step 3 (again): Exercise #1 (b)")

% Exercise #2
put "var Sentence : string"
bottomText ("Step 3 (again): Exercise #2 (a)")

var Sentence : string := "I love Turing!"
put Sentence
bottomText ("Step 3 (again): Exercise #2 (b)")

var Heart_Beat : int := 2879
put Heart_Beat
bottomText ("Step 3 (again): Exercise #2 (c)")

var Pi : real := 3.1415926
put Pi
bottomText ("Step 3 (again): Exercise #2 (d)")

var Count : int := 5
put Count
Count += 1
put Count
bottomText ("Step 3 (again): Exercise #2 (e) (i)")

Count := 5
put Count
Count -= 1
put Count
bottomText ("Step 3 (again): Exercise #2 (e) (ii)")

put "var realVar : real := \"String Text\""
delay (1000)
put "\nError:"
put "Compilatoin Errors"
put "There was 1 error."
put "\nInitialization value is the wrong type."

bottomText ("Step 3 (again): Exercise #3 (a)")

put "var stringVar : string := 5"
delay (1000)
put "\nError:"
put "Compilatoin Errors"
put "There was 1 error."
put "\nInitialization value is the wrong type."

bottomText ("Step 3 (again): Exercise #3 (b)")

put "var intVar : int := 3.14159265"
delay (1000)
put "\nError:"
put "Compilatoin Errors"
put "There was 1 error."
put "\nInitialization value is the wrong type."

bottomText ("Step 3 (again): Exercise #3 (b)")


put "var Number : int"
put "Number := 12.5"
put "put \"The number is\",Number,\".\""

bottomText ("Step 3 (for the third time), incorrect version")

put "var Number : " ..
colour (brightred)
put "real"

colour (black)
put "Number := 12.5"

put "put \"The number is" ..
colourback (brightred)
put " " ..
colourback (white)
put "\",Number\".\"\n"

var Number : real
Number := 12.5

put "The result of the code:\n"
put "The number is ", Number, "."

bottomText ("Step 3 (for the third time), corrected version")


var Length, Width, Area : real
Length := 10
Width := 14.76
Area := Length * Width
put "The area of the rectangle is ", Area, " cm2"

bottomText ("Step 4")

var Hours : real := 37.5
var Salary : int := 37650
var Hourly_Wage : real := (Salary / 52) / Hours
put "Your hourly wage is approx. $", Hourly_Wage : 0 : 2, " per hour."

bottomText ("Step 5")