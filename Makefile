.PHONY: clean
clean:
	rm -f style.css

.PHONY: build
build: clean
	sass style.scss > style.css
