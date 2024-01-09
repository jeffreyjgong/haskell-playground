-- this way we don't repeat ourselves in the calculation of density

densityTell :: (RealFloat a) => a -> a -> String 
densityTell mass volume 
    | density < 1.2 = "fly"
    | density <= 1000.0 = "swim"
    | otherwise = "sink"
    where density = mass / volume

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l]
    where (f:_) = firstname
          (l:_) = lastname

-- you can also define a function in a where block
-- make a function that takes in a list of (m,v) tuples and returns a list of corresponding densities
calcDensities :: (RealFloat a) => [(a, a)] -> [a]
calcDensities lst = [density m v | (m, v) <- lst]
    where density mass volume = mass/volume

-- where bindings can be nested