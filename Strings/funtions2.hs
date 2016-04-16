module Functions2 where

curryAwesome :: String
curryAwesome = "Curry is awesome"

curryAwesomeExc :: String -> String
curryAwesomeExc xs = xs ++ "!"

yliteral :: String -> String
yliteral xs = head [fourth]
    where fourth = drop 4 xs

awesome :: String -> String
awesome xs = drop 9 xs