main=interact(\z->"Compiling...\nRunning...\n"++unlines (concatMap snd $ filter (\b -> fst b `elem` words z) [("FizzBuzz()",f),("Fib()",k),("hamaji",l)]))
f = map i [1..100]
i n = let h = concat$concat[["Fizz"|g 3],["Buzz"|g 5]];g a = mod n a == 0;in last$h:[show n|h==""]
k = map show (take 46 t)
t = 1:1:zipWith (+) t (tail t)
l = map j $ reverse [1..99]
j n  = s n++d!!3++d!!4++", "++s n++d!!3++".\n"++m n
m 1 = d!!2++s 99++d!!3++d!!4++"."
m n = d!!1++s (n - 1)++d!!3++d!!4++".\n"
s 1 = '1':d!!0
s n = show n++d!!0++"es"
d = lines " shinichiro\nTake one down and pass it around, \nGo to the store and buy some more, \n of hamaji\n on the wall"
