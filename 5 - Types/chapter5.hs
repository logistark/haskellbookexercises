module Chapter5 where

  -- Functions
  -- not :: Bool -> Bool
  -- length :: [a] -> Int
  -- concat :: [[a]] -> [a]
  -- head :: [a] -> a
  -- (<) :: Ord a => a -> a -> Bool

  addStuff :: Integer -> Integer -> Integer
  addStuff a b = a + b + 5

  funcIgnoreArgs :: a -> a -> a -> String
  funcIgnoreArgs x y z = "Blah"

  nonsense :: Bool -> Integer
  nonsense True = 805
  nonsense False = 31337

  typicalCurriedFunctoin :: Integer
                         -> Bool
                         -> Integer
  typicalCurriedFunctoin i b = i + (nonsense b)

  uncurriedFunction :: (Integer, Bool)
                         -> Integer
  uncurriedFunction (i, b) = i + (nonsense b)

  anonymous :: Integer -> Bool -> Integer
  anonymous = \i b -> i + (nonsense b)

  anonymousAndManuallyNested :: Integer
                        -> Bool
                        -> Integer
  anonymousAndManuallyNested = \i -> \b -> i + (nonsense b)

  myConcat x = x ++ " yo"

  myMult x = (x / 3) * 5

  myTake x = take x

  myCom x = x > (length [1..10])

  myAlph x = x < 'z'
