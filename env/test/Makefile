NAME=test-vnc
IMG=interactivemarkdown/$(NAME)

.PHONY: build run push pull destroy

build:
	docker build -t $(IMG) .

run:                                                                            
	docker run -d --name $(NAME) -p 0.0.0.0:5901:5900 $(IMG)

push:
	docker push $(IMG)

pull:
	docker pull $(IMG)

destroy:                                                                            
	  docker kill $(NAME)
	  docker rm $(NAME)
