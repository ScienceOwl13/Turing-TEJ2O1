%***********************************************************************%
%                                                                       %
%                          PROGRAM HEADER                               %
%                                                                       %
%***********************************************************************%
%***********************************************************************%
%                                                                       %
% PROGRAMMER'S NAME:    Connor Groen                                    %
%                                                                       %
% DATE:                 Tuesday, May 30 2023                            %
%                                                                       %
% PROGRAM NAME:         Theatre Times Program                           %
%                                                                       %
% CLASS:                TEJ2O4-01                                       %
%                                                                       %
% ASSIGNMENT:           Major Program                                   %
%                                                                       %
% TEACHER:              Mr. Henrich                                     %
%                                                                       %
% DUE DATE:             Thursday, June 01, 2023                         %
%                                                                       %
%***********************************************************************%
%                                                                       %
% WHAT THE PROGRAM DOES                                                 %
%                                                                       %
% This program acts as a way to see how many people have bought tickets %
% for the local movie theatre for the times 3:00 PM, 7:00 PM, and       %
% 9:00 PM. It works by first prompting the user to input the size for   %
% a theatre, then prompting the user to choose a time to view how many  %
% tickets have been sold. It then creates a random number between 1 and %
% the theatre size that the user had inputted previously. It will then  %
% repeat the process indefinitely until the user prompts it to stop the %
% program.                                                              %
%                                                                       %
%***********************************************************************%
%                                                                       %
% PROCEDURES                                                            %
%                                                                       %
% There is one procedure that is used in this program.                  %
%                                                                       %
% wishToContinue:   It first resets the colour of the text back to      %
%                   black text on white background, then prompts the    %
%                   user to continue. Error handling is put in place    %
%                   to accept only "Yes" and "No". If the user enters   %
%                   something other than "Yes" or "No", it will call    %
%                   itself again (recursive).                           %
%                                                                       %
% getTicketsSold:   This is the procedure that gets a random number     %
%                   between 1 and the max_theatre size and will display %
%                   that number & calculate how many seats are left. It %
%                   also stores the variabels of each seat time, which  %
%                   involves an if/elsif statement for each of the      %
%                   three times. It probably can be optimized further.  %
%                                                                       %
%***********************************************************************%
%                                                                       %
% ERROR HANDLING                                                        %
%                                                                       %
% Error handling has been used every time that an input is required     %
% to continue with the program. It will simply require the user to      %
% re-answer the prompt if what they entered is not acceptable.          %
%                                                                       %
%***********************************************************************%
%                                                                       %
% PROGRAM LIMITATIONS                                                   %
%                                                                       %
% This program only has time slots for the times 3:00 PM, 7:00PM, and    %
% 9:00 PM. Additionally, there is no way that the user is able to       %
% change the theatre size once they inputted something else -- to       %
% re-input it they must restart the program.                            %
%                                                                       %
%***********************************************************************%
%                                                                       %
% EXTENSIONS AND IMPROVEMENTS                                           %
% This program could be improved in a variety of ways:                  %
% 1. Have multiple theatres that the user can select, each one with a   %
%    different capacity.                                                %
% 2. Display the movies that are playing at each time                   %
% 3. Have more times that the theatre is operational for.               %
% 4. Have the program remember how many tickets were sold for each      %
%    showing, so if the user were to ask for the results again, it      %
%    would display either the same value or a larger value.             %
% 5. Have a visual representation of the seats that are sold be         %  
%    displayed on the screen and/or have a GUI to interact with instead %
%    of having text prompts.                                            % 
%                                                                       %
%***********************************************************************%


% Declare variables used throughout the program.
var theatre_Size : string % String is easier to handle and error check than int.
var continue : string % Used in the wishToContinue program.
var theatre_Time : string
    
% Variables for how many tickets have been sold for each time.
var threeClock : int
var sevenClock : int
var nineClock : int


% USEFUL PROCEDURES
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

% When called, it will accept the time as a string, then provide how many tickets have been sold for the inputted time.
procedure getTicketsSold (time: string)
    randomize % Make a new seed for the random numbers each time
    
    % Check what variable to assign the tickets sold to
    if time = "3:00 PM" then 
        threeClock := Rand.Int (1, strint(theatre_Size))
        put "Theatre 1 has a maximum capacity of " + theatre_Size + " seats."
        put intstr(threeClock) + " seats have been sold for the ", time, " showing."
    elsif time = "7:00 PM" then
        sevenClock := Rand.Int (1, strint(theatre_Size))
        put "Theatre 1 has a maximum capacity of " + theatre_Size + " seats."
        put intstr(sevenClock) + " seats have been sold for the ", time, " showing."
    elsif time = "9:00 PM" then
        nineClock := Rand.Int (1, strint(theatre_Size))
        put "Theatre 1 has a maximum capacity of " + theatre_Size + " seats."
        put intstr(nineClock) + " seats have been sold for the ", time, " showing."
    end if
end getTicketsSold



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
        getTicketsSold("3:00 PM")
        wishToContinue
    elsif theatre_Time = "7:00 PM" then
        getTicketsSold("7:00 PM")
        wishToContinue
    elsif theatre_Time = "9:00 PM" then
        getTicketsSold("9:00 PM")
        wishToContinue
    end if
end loop

/* 
If someone receives this message, something went VERY wrong.
*/
put "You have broken the program if you see this"