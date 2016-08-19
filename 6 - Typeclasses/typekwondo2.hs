module Typekwondo2 where

  chk :: Eq b => (a -> b) -> a -> b -> Bool
  chk f x y = (f x) == y

  --arith :: Num b => (a -> b) -> Integer -> a -> b
  --arith f x y = x

  test :: Num a => Integer -> a
  test v = v
