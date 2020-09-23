.PHONY: build run

build:
	DOCKER_BUILDKIT=1 docker image build --target debug --tag ggrs:latest .

run:
	docker container run --rm --publish 8080:8080 --name ggrs -it ggrs
