all: build

build:
	@docker build --tag=${DOCKERNAME}/ubuntu:latest .

base:
	@docker pull ubuntu:14.04

rebuild: base
	@docker build --tag=${DOCKERNAME}/ubuntu:latest .

release: rebuild
	@docker build --tag=${DOCKERNAME}/ubuntu:$(shell cat VERSION) .
