IMG=interactivemarkdown/vnc-test

.PHONY: build push run

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

run:
	docker run -d --name vnc-test -p 0.0.0.0:5901:5900 $(IMG)

launch:
	docker run -d --name guacamole -p 0.0.0.0:8081:8080 \
		interactivemarkdown/guacamole /usr/local/bin/startguacamole
	make run

destroy:
	docker kill vnc-test guacamole
	docker rm vnc-test guacamole
