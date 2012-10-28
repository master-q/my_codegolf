adjust _ _ [] = ""
adjust r t (x:xs) = replicate (t - d) ' ' ++ x ++ "\n" ++ adjust r' t' xs
  where r' = (r + 1) `mod` 2
        w = if r == 0 then (+) else (-)
        d = if r == 0 then 0 else length x
        t' = w t (length x)

backAndForth :: String -> String
backAndForth s = adjust 0 0 . zipWith ($) (cycle [id,reverse]) . words $ s

main :: IO ()
main = interact backAndForth
