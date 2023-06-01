

% Declare variables used throughout the program.
var theatre_Size : string % String is easier to handle and error check than int.
var continue : string % Used in the wishToContinue program.
var theatre_Time : string
    
% Variables for how many tickets have been sold for each time.
var threeClock : int
var sevenClock : int
var nineClock : int


% prompts if the user would like to continue: if "Yes", clear screen and continue; if "No", quit program.
procedure wishToContinue 
    % Reset the colour of the text
    colour(black)
    colourback(white)
    put "Do you wish to continue: \"Yes\" or \"No\""
    get continue: *
    
    % Error handling -- only accepts Yes/No
    if continue = "No" then % Run if the input is "No"
        put "\nOkay. The program has finished."
        delay(5000)
        quit
    elsif (continue not= "Yes") and (continue not= "No") then % Run if the input is neither "Yes" or "No" (not one of the valid options)
        colour (brightred)
        put "\nERROR: \"" + continue + "\" is not one of the valid options. Please try again."
        wishToContinue
    elsif continue = "Yes" then % Run if the input is "Yes"
        delay(250)
        cls
    end if
end wishToContinue
procedure printTime (time: string)
    randomize
    if time = "3:00 PM" then
        threeClock := Rand.Int (1, strint(theatre_Size))
    elsif time = "7:00 PM" then
        sevenClock := Rand.Int (1, strint(theatre_Size))
    elsif time = "9:00 PM" then
        nineClock := Rand.Int (1, strint(theatre_Size))
    end if

    put "Theatre 1 has a maximum capacity of " + theatre_Size + " seats."
    put intstr(threeClock) + " seats have been sold for the ", time, " showing."
    put "There are " + intstr(strint(theatre_Size) - threeClock) + " seats left for the showing in Theatre 1.\n"
end printTime




% FIRST QUESTION
    % Prompt the user for the size of the theatre -- error checks are used.
loop
    colour(black)
    put "Please input the capacity of Theatre 1. The acceptable range is 1 to 1,000."
    get theatre_Size: *

    % Exit when it is a number between 1 and 1_000
    exit when strintok (theatre_Size) = true and (strint (theatre_Size) >= 1 and strint (theatre_Size) <= 1000)

    % Error handling -- must be an integer between 1 and 1_000
    if strintok (theatre_Size) = false then
        colour (brightred)
        put "\nERROR: " + theatre_Size + " is not an integer.\n"
        wishToContinue
    elsif strintok (theatre_Size) = true and strint (theatre_Size) < 1 then
        colour (brightred)
        put "\nERROR: " + theatre_Size + " is less than 1.\n"
        wishToContinue
    elsif strintok (theatre_Size) = true and strint (theatre_Size) > 1000 then
        colour (brightred)
        put "\nERROR: " + theatre_Size + " is greater than 1,000.\n"
        wishToContinue
    end if
end loop

wishToContinue

% SECOND QUESTION
    % Prompts the user to choose a time, and says how many tickets have been sold for each time -- will repeat until wishToContinue quits the program.
loop
    put "Please enter your choice of theatre time: 3:00 PM, 7:00 PM, or 9:00 PM"
    get theatre_Time: *

    % Error handling -- must be one of the valid times
    if (theatre_Time not= "3:00 PM") and (theatre_Time not= "7:00 PM") and (theatre_Time not= "9:00 PM") then
        colour(brightred)
        put "ERROR: " + theatre_Time + " is not a valid time."
        wishToContinue

    % Generate random numbers for the theatres
    elsif theatre_Time = "3:00 PM" then
        printTime("3:00 PM")
        wishToContinue
    elsif theatre_Time = "7:00 PM" then
        printTime("7:00 PM")
        wishToContinue
    elsif theatre_Time = "9:00 PM" then
        printTime("9:00 PM")
        wishToContinue
    end if
end loop

/* 
If someone receives this message, something went VERY wrong.
*/
put "You have broken the program if you see this"