all: Answer
Answer: Answer.hs
	ghc --make -Wall Answer.hs

lint:
	hlint -c *.hs

test: Answer
	-stdiochk -n ./Answer testdata

clean:
	rm -rf Answer
	rm -rf *.hi *.o
	rm -rf *~
	rm -rf */*~

.PHONY: lint test clean
