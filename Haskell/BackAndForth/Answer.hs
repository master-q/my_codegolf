adjust _ _ [] = ""
adjust r t (x:xs) = replicate (t - d) ' ' ++ x ++ "\n" ++ adjust ((r+1)`mod`2) t' xs
  where w = if r == 0 then (+) else (-)
        d = if r == 0 then 0 else length x
        t' = w t (length x)
main=interact(adjust 0 0.zipWith($)(cycle[id,reverse]).words)
