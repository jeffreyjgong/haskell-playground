-- woah this is sick af

-- S = {2*x | x \in N, x <= 10}
-- Output function: 2*x (this gets applied to all possible numbers from after pipe)
-- Variable: x
-- Input Set: N
-- Predicate: x <= 10 (this filters the input set and sends all possible numbers to output function)

-- first 10 even numbers
first10Even = [2*x | x <- [1..10]]

-- only ones greater than 12 tho
first10EvenPredicate = [2*x | x <- [1..10], 2*x >= 12]

-- all numbers from 50 to 100 whose remainder when divided with the number 7 is 3
remainder50 = [x | x <- [50..100], x `mod` 7 == 3]

-- function that replaces each odd number greater than 10 with "BANG!" 
-- and each odd number that's less than 10 with "BOOM!"

bangBoom xl = [ if x < 10 then "BOOM!" else "BANG!" | x <- xl, odd x]

-- multiple predicates 
multiplePred = [x | x <- [10..20], x /= 11, x /= 19]

-- multiple input lists (does a flattened cartesian product)
multipleInputList = [x * y | x <- [2,5,10], y <- [8, 10, 11], x*y > 50]

-- our own version of length
-- _ means we don't care what we draw from the list
length' xl = sum [1 | _ <- xl]

-- removeNonUpperCase
removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]

-- nested list comprehension
removeAllOddsFromNested xxl = [[x | x <- xl, even x] | xl <- xxl]
