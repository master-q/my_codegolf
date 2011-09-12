main :: IO ()
main = interact $ \s -> "Compiling...\nRunning...\n" ++ g s
  where g a | "FizzBuzz()" `elem` words a = unlines f
            | "Fib()" `elem` words a = unlines k
            | otherwise = unlines l

-- fizzbuzz
f :: [String]
f = map i [1..100]where i n = let h = concat$concat[["Fizz"|g 3],["Buzz"|g 5]];g a = mod n a == 0;in last$h:[show n|h==""]

-- fib
k :: [String]
k = map show (take 46 j)where j = 1:1:zipWith (+) j (tail j)

-- shinichiro
l :: [String]
l = map j [1..99]
  where
    j n  = s (100 - n) ++ " of hamaji on the wall, " ++
           s (100 - n) ++ " of hamaji.\n" ++
           m n
    m 99 = "Go to the store and buy some more, " ++
          s 99 ++ " of hamaji on the wall."
    m n = "Take one down and pass it around, " ++
          s (99 - n) ++ " of hamaji on the wall.\n"
    s 1 = "1 shinichiro"
    s n = show n ++ " shinichiroes"
