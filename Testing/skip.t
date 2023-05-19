var word : string
procedure clearScreen
    var ch : string (1)
    put "Press ENTER to clear screen."
    getch (ch)
    cls
end clearScreen


for i : 1 .. 3
    for j : 1 .. 5
	put i, j
    end for
end for
