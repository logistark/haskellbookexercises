module Test where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")


main :: IO ()
main = do
	sayHello "pepe"