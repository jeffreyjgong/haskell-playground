appendLists x y = x ++ y

consList x y = x:y

-- strings are lists of chars in haskell
-- "hello" is syntactic sugar for ["h", "e", "l", "l", "o"]
-- same with lists themselves
-- they are just syntactic sugar: [1,2,3] = 1:2:3:[]

example = [1,2,3]

getSecondElement l = l !! 1

b = [[1,2], [2,3]]

-- remember [[]] and [[[]]] are different

-- lists are compared lexicographically
-- [3,2,1] > [2,1,0]

-- cant use any of these on empty list
firstElem = head [5,4,3,2,1]

everythingButFirstElem = tail [5,4,3,2,1]

lastElem = last [5,4,3,2,1]

everythingButLastElem = init [5,4,3,2,1]

checkEmpty x = if null x 
    then "list empty" 
    else "list has something"

lengthOfList x = "length of list is " ++ show (length x)

reverseOfList x = "reverse of list is " ++ show (reverse x)

-- [1,2,3]
firstXofList = take 3 [1,2,3,4,5]

-- [4,5]
dropFirstX = drop 3 [1,2,3,4,5]

-- 1
minOfList = minimum [1,2,3,4,5]

-- 5 
maxOfList = maximum [1,2,3,4,5]

-- 15
sumOfList = sum [1,2,3,4,5]

-- 120
prodOfList = product [1,2,3,4,5]

-- infix elem function (basically contains)
doesContain = 4 `elem` [1,2,3,4,5]
doesntContain = 6 `elem` [1,2,3,4,5]