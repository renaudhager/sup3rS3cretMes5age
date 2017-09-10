NAME = renaudhager/sup3rs3cretmes5age

GIT_TAG := $(shell git describe --abbrev=0 --tags --exact-match)
BRANCH_NAME := $(shell git rev-parse --symbolic-full-name --abbrev-ref HEAD)

all: build tag_latest

build:
	docker build --tag="$(NAME):$(BRANCH_NAME)-v$(GIT_TAG)" .

tag_latest:
	docker tag $(NAME):$(BRANCH_NAME)-v$(GIT_TAG) $(NAME):latest

push:
	docker login -u $(DOCKER_USER) -p $(DOCKER_PASSWORD)
	docker push "$(NAME):$(BRANCH_NAME)-v$(GIT_TAG)"
