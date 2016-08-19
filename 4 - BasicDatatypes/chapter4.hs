module Chapter4 where

  awesome = ["Papuchon", "curry", ":)"]
  alsoAwesome = ["Quake", "The Simons"]
  allAwesom = [awesome, alsoAwesome]


  myAbs :: Integer -> Integer
  myAbs x = if x < 0 then -x else x

  isPalindrome :: (Eq a) => [a] -> Bool
  isPalindrome x = reverse x == x

  f :: (a, b) -> (c, d) -> ((b,d), (a,c))
  f x y = ((snd x, snd y), (fst x, fst y))

  x = (+)

  g xs = w `x` 1
    where w = length xs
