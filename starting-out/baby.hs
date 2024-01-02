doubleMe x = x+x

doubleUs x y = x*2 + y*2

halveMe x = x/2

-- else statements are mandatory thus the if statement is an expression

doubleSmallNumber x = if x > 100
    then x
    else x*2

-- apostrophe means a slightly modified version of a function or var

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- functions also can't begin with capital letters
-- also functions with no parameters are called definitions

jeffreyGong = "jeffrey gong was here"