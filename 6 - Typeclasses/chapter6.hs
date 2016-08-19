module Chapter6 where

  import qualified Data.List

  divideThenAdd :: Fractional a => a -> a -> a
  divideThenAdd x y = (x / y) + 1

  --f :: (Num a, Fractional a) => a -> a -> a
  --f x y = x

  --data Mood = Blah

  --instance Show Mood where
  --  show _ = "Blah"

  data Trivial =
    Trivial'

  instance Eq Trivial where
    Trivial' == Trivial' = True

  data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun

  data Date =
    Date DayOfWeek Int

  instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Weds Weds = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False

  instance Eq Date where
    (==) (Date weekday dayOfMonth)
     (Date weekday' dayOfMonth') =
        weekday == weekday' && dayOfMonth == dayOfMonth'

  g :: Int -> Bool
  g 1 = True
  g 2 = True
  g 3 = True
  g _ = False

  data Identity a =
    Identity a

  instance Ord a => Eq (Identity a) where
    (==) (Identity v) (Identity v') =
      compare v v' == EQ

  data TisAnInteger =
    TisAn Integer

  instance Eq TisAnInteger where
    (==) (TisAn v) (TisAn v') = v == v'

  data TwoIntegers =
    Two Integer Integer

  instance Eq TwoIntegers where
    (==) (Two first second) (Two first' second') = (first == first') && (second == second')

  data StringOrInt =
    TisAnInt Int
    | TisAString String

  instance Eq StringOrInt where
    (==) (TisAnInt v) (TisAnInt v') = v == v'
    (==) (TisAString v) (TisAString v') = v == v'
    (==) _ _ = False

  data Pair a =
    Pair a a

  instance Eq a => Eq (Pair a) where
    (==) (Pair v vv) (Pair v' vv') = (v == v') && (vv == vv')

  data Tuple a b =
    Tuple a b

  instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple v w) (Tuple v' w') = (v == v') && (w == w')

  data Which a =
    ThisOne a
    | ThatOne a

  instance Eq a => Eq (Which a) where
    (==) (ThisOne v) (ThisOne v') = v == v'
    (==) (ThatOne v) (ThatOne v') = v == v'
    (==) _ _ = False

  data EitherOr a b =
    Hello a
    | Goodbye b

  instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello v) (Hello v') = v == v'
    (==) (Goodbye v) (Goodbye v') = v == v'
    (==) _ _ = False

  add :: Num a => a -> a -> a
  add x y = x + y

  addWeird :: (Ord a, Num a) => a -> a -> a
  addWeird x y =
    if x > 1
    then x + y
    else x

  --Multiple choice
  --1.The Eq class
  --c Makes equality tests possible

  --2. The typeclass Ord
  --a and b allows any thow values to be compared and is a subclas of Eq

  --3 Suppose the typeclass Ord has an operator >. What is the type of >?
  -- a Ord a => a -> a -> Bool

  --4 In x = divMod 16 12
  --c the type of x is a Tuple

  --5 The typeclass Integral includes
  --a Int and Integer numbers

  --Does it typecheck?

  data Person = Person Bool
   deriving Show

  printPerson :: Person -> IO ()
  printPerson person = putStrLn (show person)


  data Mood = Blah
            | Woot deriving (Eq, Show)

  settleDown x = if x == Woot
                 then Blah
                 else x

  --3a Only Blah and Woot
  --3b It will not typecheck since the function can only accept Blah or Woot
  --3c It will fail since it only have right now Eq instance

  type Subject = String
  type Verb = String
  type Object = String

  data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)

  s1 = Sentence "dogs" "drool"
  s2 = Sentence "Julie" "loves" "dogs"


  data Rocks =
    Rocks String deriving (Eq, Ord, Show)

  data Yeah =
    Yeah Bool deriving (Eq, Ord, Show)

  data Papu =
    Papu Rocks Yeah
    deriving (Eq, Ord, Show)


  phew = Papu (Rocks "chases") (Yeah True)

  truth = Papu (Rocks "chomskydoz")
               (Yeah True)

  equalityForAll :: Papu -> Papu -> Bool
  equalityForAll p p' = p == p'

  comparePapus :: Papu -> Papu -> Bool
  comparePapus p p' = p > p'

  i :: Num a => a
  i = 1

  f :: RealFrac a => a
  f = 1.0

  freud :: Ord a => a -> a
  freud x = x

  freud' :: Int -> Int
  freud' x = x

  myX = 1 :: Int

  sigmund :: Int -> Int
  sigmund x = myX

  sigmund' :: Int -> Int
  sigmund' x = myX

  jung :: [Int] -> Int
  jung xs = head (Data.List.sort xs)

  young :: Ord a => [a] -> a
  young xs = head (Data.List.sort xs)

  mySort :: [Char] -> [Char]
  mySort = Data.List.sort

  signifier :: [Char] -> Char
  signifier xs = head (mySort xs)
