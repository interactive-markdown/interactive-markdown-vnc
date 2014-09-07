IMG=interactivemarkdown/base

.PHONY: build push all

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

build-all:
	make build
	cd test && make build
