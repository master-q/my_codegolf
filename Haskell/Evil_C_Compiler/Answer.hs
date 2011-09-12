main=interact(\s->"Compiling...\nRunning...\n"++(unlines $ g s))
  where g a | "FizzBuzz()" `elem` words a = f
            | "Fib()" `elem` words a = k
            | otherwise = l
f = map i [1..100]where i n = let h = concat$concat[["Fizz"|g 3],["Buzz"|g 5]];g a = mod n a == 0;in last$h:[show n|h==""]
k = map show (take 46 j)where j = 1:1:zipWith (+) j (tail j)
l = map j [1..99]
  where
    j n  = s (100 - n) ++ d!!3 ++ d!!4 ++ ", " ++
           s (100 - n) ++ d!!3 ++ ".\n" ++
           m n
    m 99 = d!!2 ++ s 99 ++ d!!3 ++ d!!4 ++ "."
    m n = d!!1 ++
          s (99 - n) ++ d!!3 ++ d!!4 ++ ".\n"
    s 1 = "1"++d!!0
    s n = show n ++ d!!0 ++ "es"
d = lines " shinichiro\nTake one down and pass it around, \nGo to the store and buy some more, \n of hamaji\n on the wall"
