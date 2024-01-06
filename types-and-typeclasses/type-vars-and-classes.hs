-- what's the function type of the head function?
-- head :: [a] -> a
-- what is a?
-- very similar to a generic type
-- it's a type variable
-- functions that use these are called polymorphic functions

-- fst :: (a, b) -> a

-- Note: == is a function, so are *, +, /, etc. If a function is comprised only of 
-- special characters, then it is infix by default
-- you can use it as prefix if you surround it with parentheses

-- typeclasses
-- what's the type signature of the == function?
-- (==) :: (Eq a) => a -> a -> Bool
-- anything before => is called a Class Constraint
-- We read it like this
--  the equality function takes any two values that are of the same type and returns a Bool. 
-- The type of those two values must be a member of the Eq class (this was the class constraint).

-- Eq typeclass provides an interface for testing for equality
-- Any type where it makes sense to test for equality between two values of that type
-- should be a member of the Eq class

-- elem :: (Eq a) => a -> [a] -> Bool

-- Eq (equality typeclass): implements ==, /=
-- Ord (ordering typeclass): implements <, >, <=, >=
    -- To be a member of Ord, a type must also be a member of Eq
    -- compare takes two Ord members of the same type and returns an ordering
    -- Ordering is an enum that can be: GT, LT, EQ

compareEg = "Ab" `compare` "Zb"

-- Show (string representation typclass): implements show

bruh = show 3
bruh' = show 6.77

-- Read (parse string typeclass): implements read

two = read "5" - 3

-- this is an error tho: 
-- read "5"
-- no type inference so read doesn't know what to do with it
-- read :: (Read a) => String -> a

-- so we can use explicit type annotations
five = read "5" :: Int
fiveFloat = read "5" :: Float

-- Enum (sequentially ordered types): succ and pred -> can use in list ranges

-- contains () Bool Char Ordering Int Integer Float Double etc
floatSucc = succ 3.5
rangeEnum = show [LT .. GT]

-- Bounded (upper and lower bound): two polymorphic constants minBound, maxBound

minInt = minBound :: Int
maxChar = maxBound :: Char
maxBool = maxBound :: Bool
minBool = minBound :: Bool

-- maxBound and minBound have types (Bounded a) => a

-- Num (numeric typeclass)
-- whole numbers are also polymorphic constants

regTwenty = 20 :: Int 
integerTwenty = 20 :: Integer 
floatTwenty = 20 :: Float 

-- :t (*) 
-- (*) :: (Num a) => a -> a -> a
-- both params must be of the same type
-- (5 :: Int) * (6 :: Integer) is a type error
-- 5 * (6 :: Integer) is fine

-- Integral : contains typeclasses Int and Integer
-- Floating: contains typeclasses Float and Double

-- fromIntegral :: (Integral a, Num b) => a -> b
-- turns integral number into a more general number

-- bruhh = length [1,2,3] + 3.2 is an error
validLengthAdd = fromIntegral (length [1,2,3]) + 3.2