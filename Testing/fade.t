/*
for i : 0 .. 15
    colourback(i + 16)
    for j : 1 .. 25
        put ""
    end for
    delay (01)   
end for */

for i : 0 .. 15
    colourback(i + 16)
    put repeat("\n", 25)
    delay(01)
end for
