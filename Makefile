NAME=base
IMG=interactivemarkdown/$(NAME)

.PHONY: build build-all push push-all pull pull-all

build:
	docker build -t $(IMG) .

build-all:
	make build
	cd env/test && make build
	cd env/android && make build

push:
	docker push $(IMG)

push-all:
	make push
	cd env/test && make push
	cd env/android && make push

pull:
	docker pull $(IMG)

pull-all:
	make pull
	cd env/test && make pull
	cd env/android && make pull
