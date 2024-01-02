-- functions can have types and you should declare them

removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]

-- [Char] is synonymous with String

-- parameters and return type are all separated by ->
addThreeInts :: Int -> Int -> Int -> Int
addThreeInts x y z = x + y + z

-- Int is used for whole numbers and is bounded by 32-bit or 64-bit machines
-- Integer is unbounded but Int is more efficient
-- Float is a real floating point with single precision
-- Double is a real floating point with double the precision
-- Bool is a boolean type (True or False)
-- Char represents character (denoted by single quotes)
