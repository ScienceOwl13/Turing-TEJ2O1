var positionC : int := 2 + 6
var positionO1 : int := 8 + 6 + 4
var positionN1 : int := positionO1 + 8 + 4
var positionN2 : int := positionN1 + 8 + 4
var positionO2 : int := positionN2 + 8 + 4
var positionR : int := positionO2 + 8 + 4

procedure letterC
    var cTB : string := "  * * *  "
    var c24 : string := "*        "

    locate (1, positionC)
    put cTB
    for i : 2 .. 4
	locate (i, positionC)
	put c24
    end for
    locate (5, positionC)
    put cTB
end letterC


% Letter O
procedure letterO1
    var oTB : string := "  * * *  "
    var o24 : string := "*       *"

    locate (1, positionO1)
    put oTB
    for i : 2 .. 4
	locate (i, positionO1)
	put o24
    end for
    locate (5, positionO1)
    put oTB
end letterO1

% Letter N1
procedure letterN1
    var nTB : string := "*       *"
    var n2 : string := "* *     *"
    var n3 : string := "*   *   *"
    var n4 : string := "*     * *"

    locate (1, positionN1)
    put nTB
    locate (2, positionN1)
    put n2
    locate (3, positionN1)
    put n3
    locate (4, positionN1)
    put n4
    locate (5, positionN1)
    put nTB
end letterN1

% Letter N2
procedure letterN2
    var nTB : string := "*       *"
    var n2 : string := "* *     *"
    var n3 : string := "*   *   *"
    var n4 : string := "*     * *"

    locate (1, positionN2)
    put nTB
    locate (2, positionN2)
    put n2
    locate (3, positionN2)
    put n3
    locate (4, positionN2)
    put n4
    locate (5, positionN2)
    put nTB
end letterN2

% Letter O
procedure letterO2
    var oTB : string := "  * * *  "
    var o24 : string := "*       *"

    locate (1, positionO2)
    put oTB
    for i : 2 .. 4
	locate (i, positionO2)
	put o24
    end for
    locate (5, positionO2)
    put oTB
end letterO2

% Letter R
procedure letterR
    var r1 : string := "* *      "
    var r2 : string := "*   *    "
    var r3 : string := "* *      "
    var rB : string := "*   *    "

    locate (1, positionR)
    put r1
    locate (2, positionR)
    put r2
    locate (3, positionR)
    put r3
    for i : 4 .. 5
	locate (i, positionR)
	put rB
    end for
end letterR

letterC
letterO1
letterN1
letterN2
letterO2
letterR

put "       " ..
put repeat ("*", 63)
