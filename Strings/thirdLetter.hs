module ThirdLetter where

thirdLetter :: String -> Char
thirdLetter xs = xs !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvs :: String
rvs = awesome ++ " " ++ is ++ " " ++ curri
    where original = "Curry is awesome"
          awesome  = drop 9 original
          is       = take 2 (drop 6 original)
          curri    = take 5 original
