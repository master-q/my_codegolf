l=length
j _ _ []=""
j r t (x:xs)=replicate (t - d) ' '++x++"\n"++j((r+1)`mod`2) u xs
  where d=last$l x:[0|r==0]
        u=last$(t-l x):[t+l x|r==0]
main=interact(j 0 0.zipWith($)(cycle[id,reverse]).words)
