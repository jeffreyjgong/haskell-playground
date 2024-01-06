-- when defining functions you can define separate function bodies for different patterns
-- you can pattern match on any data type (numbers, characters, lists, etc.)

lucky :: (Integral a) => a -> String
lucky 7 = "lucky number 7!"
lucky x = "sorry you're out of luck"

-- patterns are checked from top to bottom

-- example of recursion
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

-- add two vectors (2-dimensional) naive
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- using pattern matching
addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- how do we get the third element of a tuple?
third :: (a, b, c) -> c
third (_, _, z) = z

-- pattern matching in list comprehension
xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)] 
egList = [ a+b | (a,b) <- xs ]

-- you can even pattern match / bind with : !!
-- x:xs will match the head of the list with x and the rest of the list with xs
-- however this only works if c = # of colons, >=c size list

head' :: [a] -> a
head' [] = error "Can't call head on empty list"
head' (x:_) = x

-- if you want to bind several variables, even if some of them are _, you have to surround with ()

-- pattern matching w constants
tell :: (Show a) => [a] -> String 
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y 
tell (x:y:_) = "The list has many elements"

-- length function using recursion and pattern matching 
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:x) = 1 + length' x

-- sum function using recursion and pattern matching 
sum' :: (Num a) => [a] -> a 
sum' [] = 0
sum' (x:y) = x + sum' y

-- "as patterns"
-- handy way of breaking something up according to a pattern and
-- binding it to names whilst still keeping a reference to the whole thing

firstLetter :: String -> String 
firstLetter "" = "Empty string, oops"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]