main :: IO ()
main = putStr $ unlines $ ["Compiling...\nRunning..."] ++ f

f :: [String]
f = map i [1..100]where i n = let h = concat$concat[["Fizz"|g 3],["Buzz"|g 5]];g a = mod n a == 0;in last$h:[show n|h==""]
