main :: IO ()
main = interact $ \s -> "Compiling...\nRunning...\n" ++ g s
  where g a | "FizzBuzz()" `elem` words a = unlines f
            | "Fib()" `elem` words a = unlines k
            | otherwise = ""

-- fizzbuzz
f :: [String]
f = map i [1..100]where i n = let h = concat$concat[["Fizz"|g 3],["Buzz"|g 5]];g a = mod n a == 0;in last$h:[show n|h==""]

-- fib
k :: [String]
k = map show (take 46 j)where j = 1:1:zipWith (+) j (tail j)
