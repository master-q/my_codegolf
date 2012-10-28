l=length
j _ _[]=""
j r t(x:s)=([1..t-d]>>" ")++x++"\n"++j(mod(r+1)2) u s where d=last$l x:[0|r==0];u=last$(t-l x):[t+l x|r==0]
main=interact(j 0 0.zipWith($)(cycle[id,reverse]).words)
