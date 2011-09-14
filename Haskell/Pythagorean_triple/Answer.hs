main=putStr$unlines$map(tail.concat.map((' ':).show))[[a,b,c]|a<-[3..100],b<-[3..5000],c<-[b+1..b+100],a*a+b*b==c*c]
