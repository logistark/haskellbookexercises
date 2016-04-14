-- FunctionWithLet.hs
module FunctionWithLet where


printInc2 n = let plusTwo = n + 2
              in print plusTwo

printInc2' n =
    (\plusTwo -> print plusTwo) (n + 2)

mult1   = let x = 5 in x
mult2   = let x = 5 in x * x
mult3   = let x = 5; y = 6 in x * y
mult4   = let x = 3; y = 1000 in x + 3

func1   = let x = 3; y = 1000 in x * 3 + y
func2   = let y = 10; x = 10 * 5 + y in x * 5
func3   = let x = 7; y = negate x; z = y * 10 in z / x + y

