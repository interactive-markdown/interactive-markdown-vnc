IMG=interactivemarkdown/vnc-test

.PHONY: build push run

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

run:
	docker run -d -p 0.0.0.0:5901:5900 $(IMG)
