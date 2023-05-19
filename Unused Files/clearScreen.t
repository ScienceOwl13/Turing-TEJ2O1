% Turning 4.1.1
% TEJ2O1-02
% 2023.05.01

put "Hello, World!"

procedure clearScreen
  var ch:string(1)
    put "Press ENTER to clear screen and continue"
  getch(ch)
  cls
end clearScreen

clearScreen

put "Hello again, World!"
