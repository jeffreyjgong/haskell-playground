-- guards are a way of testing whether some property of a value (or several of them)
-- are true or false

-- sounds like an if statement?
-- similar, but just a lot more readable with a lot of conditions and play nicely with patterns

densityTell :: (RealFloat a) => a -> String 
densityTell density
    | density < 1.2 = "You fly"
    | density <= 1000.0 = "You swim"
    | otherwise = "You sink :("

densityTell' :: (RealFloat a) => a -> a -> String
densityTell' mass volume 
    | mass / volume < 1.2 = "You fly"
    | mass / volume <= 1000.0 = "you swim"
    | otherwise = "you sink"

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b = GT
    | a == b = EQ
    | otherwise = LT