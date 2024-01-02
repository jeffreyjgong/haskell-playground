-- tuples vs list
-- list is just a list, don't care about length, only care that all elements are homogeneous
-- tuples you care about the exact number of elements and they don't have to be homogeneous
-- ('A', 1) is different than (1, 'A')

-- fst and snd only work on pairs
firstElem = fst (8, 11)
secondElem = snd (8, 11)

-- zip creates list of pairs from two lists 
-- (if lengths don't match, then longer list gets cut to length of shorter one)

zipEg = zip [1,2,3] ["jeff", "j", "gong"]


-- which right triangle that has integers for all sides and 
-- all sides equal to or smaller than 10 has a perimeter of 24

validRightTriangle = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a + b + c == 24]

-- this gives 2 answers (6,8,10) and (8,6,10)
-- to give only one answer
-- lets define arbitrarily that a <= b <= c

validRightTriangle' = [(a,b,c) | c <- [1..10], b<-[1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]