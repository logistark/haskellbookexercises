module Reverse where

rvrs :: String -> String
rvrs x = awesome ++ " " ++ is ++ " " ++ curri
    where awesome = drop 9 x
          is      = take 2 (drop 6 x)
          curri   = take 5 x

main :: IO ()
main = print (rvrs "Curry is awesome")