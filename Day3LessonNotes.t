% 2023.05.03
% TEJ2O1-02
% Day 3 Lesson Notes

% Variables 
procedure clearScreen
  var ch:string(1)
  put "Press ENTER to clear screen and continue"
  getch(ch)
  cls
end clearScreen

var name:string
put "Please enter your name"
get name

put "Hello, ", name, ". What a nice name"

clearScreen

var name2: string
put "Please enter your full name"
get name2:*
put name2

clearScreen
var pine: real
get pine
put pine
