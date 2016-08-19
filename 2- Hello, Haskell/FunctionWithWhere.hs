module FunctionWithWhere where

printInc n = print plusTwo
    where plusTwo = n + 2

mult1       = x
    where x = 5

mult2       = x * x
    where x = 5

mult3       = x * y
    where x = 5
          y = 6

func1       = x * 3 + y
    where x = 3
          y = 1000

func2       = x * 5
    where y = 10
          x = 10 * 5 + y

func3       = z / x + y
    where x = 7
          y = negate x
          z = y * 10