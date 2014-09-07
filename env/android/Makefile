IMG=interactivemarkdown/android-vnc

.PHONY: build

build:
	docker build -t $(IMG) .

run:                                                                            
	  docker run -d --name android-vnc -p 0.0.0.0:5901:5900 $(IMG)

destroy:                                                                            
	  docker kill android-vnc
	  docker rm android-vnc
