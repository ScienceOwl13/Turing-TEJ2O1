/*
 2023.05.29
 TEJ2O1-02
 Assignment #5
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

var Name_2 : string

put "Please enter your first name."
get Name_2
put Name_2, " is a lovely name!"

bottomText ("Step 2")

var Age, Birth_Year : int
var Name_3 : string

put "Please enter your first name: " ..
get Name_3
put "When were you born ", Name_3, "? " ..
get Birth_Year

Age := 2023 - Birth_Year

put ""
put "You are ", Age, " year(s) old."

bottomText ("Step 3")

var temporary_variable : string
var Full_Name : string
put "Please enter your full name."
get Full_Name
get temporary_variable

put ""
put "Hello ", Full_Name, "."

bottomText ("Step 4")


colour (darkgrey)
put "Hint"
put "For the next prompt, put double quotes (\"\") around your name when you enter it."
bottomText ("Hint for Step 4 (a)")




put "Please enter your full name."
get Full_Name
put ""
put "Hello ", Full_Name, "."
bottomText ("Step 4 (a)")


put "Please enter your full name."
get Full_Name : *

put ""
put "Hello ", Full_Name, "."

bottomText ("Step 4 (b)")


put "My school is a really a \"groovy\" school. "
bottomText ("Step 5")


var givenPrice : string

loop
    put "Please input the price of an item: $"..
    get givenPrice

    exit when strrealok (givenPrice) = true and (strreal (givenPrice) >= 0.01)

    if strrealok (givenPrice) = false then
        colour (brightred)
        put "\nERROR: " + givenPrice + " is not a (real) number."
        bottomText ("Exercise 1")
    elsif strrealok (givenPrice) = true and strreal (givenPrice) < 0.01 then
        colour (brightred)
        put "\nERROR: " + givenPrice + " is less than $ 0.01."
        bottomText ("Exercise 1")
    end if
end loop

var taxPrice : real
taxPrice := strreal (givenPrice) * 0.13
var totalPrice : real := taxPrice + strreal (givenPrice)

put ""
put "If HST = 13%, then there would be $", taxPrice, " added to the item." 
put "The total cost of the item, including HST is $", totalPrice : 0 : 2, "."