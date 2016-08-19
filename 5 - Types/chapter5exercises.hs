module Chapter5Exercises where
  functionH :: [a] -> a
  functionH (x:_) = x

  functionC :: Int -> Int -> Bool
  functionC x y = if (x > y) then True else False

  functionS :: (a, b) -> b
  functionS (x, y) = y

  i :: a -> a
  i a = a

  c :: a -> b -> a
  c a b = a

  c'' :: b -> a -> b
  c'' b a = b

  c' :: a -> b -> b
  c' a b = b

  r :: [a] -> [a]
  r a = tail a

  co :: (b -> c) -> (a -> b) -> (a -> c)
  co = (.)

  a :: (a -> c) -> a -> a
  a f x = x

  a' :: (a -> b) -> a -> b
  a' f x = f x
