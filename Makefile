.PHONY: clean
clean:
	rm -f style.css

.PHONY: build
build: clean
	sass style.scss > style.css

.PHONY: deploy
deploy:
	aws s3 cp index.html s3://stash.cool/index.html --acl public-read