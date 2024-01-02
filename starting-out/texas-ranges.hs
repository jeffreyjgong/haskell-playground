-- same as writing out 1,2,3,... 20
numberEnum = [1..20]

-- "abcde..z"
letterEnum = ['a'..'z']
upperLetterEnum = ['A'..'Z']

-- 2 through 20 step by 2
stepNumberEnum = [2,4..20]
-- 5 through 100 step by 10 (goes to 95)
stepNumberEnum' = [5,15..100]

-- reverse
reverseStepNumber = [20,19..1]

-- don't use floating point numbers in list ranges!

-- don't print this!
infiniteList = [1,2..]

-- first 3 multiples of 8
first3Multiples = take 3 [8,16..]

-- cycle takes a list and cycles it into an infinite one
cycleEg = take 10 (cycle [1,2,3])

lotsOfLol = take 10 (cycle "LOL ")

-- repeat takes an element and produces infinite list of just that
lotsOf5 = take 10 (repeat 5)

-- equivalent to replicate (just use replicate)
lotsOf5' = replicate 10 5

isEquivalent = lotsOf5 == lotsOf5'