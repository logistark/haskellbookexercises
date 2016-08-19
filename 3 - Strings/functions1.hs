-- functions1.hs
module Function1 where

curryAwesome :: String
curryAwesome = "Curry is awesome"

curryAwesomeExc :: String
curryAwesomeExc = curryAwesome ++ "!"

yliteral :: String
yliteral = head [fourth]
    where fourth = drop 4 curryAwesomeExc

awesome :: String
awesome = drop 9 curryAwesomeExc