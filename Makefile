IMG=interactivemarkdown/base

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)
