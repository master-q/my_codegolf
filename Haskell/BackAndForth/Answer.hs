j _ _ []=""
j r t (x:xs)=replicate (t - d) ' ' ++ x ++ "\n" ++ j ((r+1)`mod`2) u xs
  where w=last$(-):[(+)|r==0]
        d=last$length x:[0|r==0]
        u=w t$length x
main=interact(j 0 0.zipWith($)(cycle[id,reverse]).words)
