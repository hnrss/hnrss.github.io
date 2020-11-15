updates.xml: updates.rec
	rm -f $@
	./build-feed.sh

clean:
	rm -f updates.xml

.PHONY: clean
