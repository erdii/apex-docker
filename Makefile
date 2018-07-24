NAME := "erdii/apex-docker"
VERSION := "1.0.0-rc3-node8"

.PHONY: build
build:
	docker build . \
		-t $(NAME):latest \
		-t $(NAME):$(VERSION)

.PHONY: push
push:
	docker push $(NAME):latest
	docker push $(NAME):$(VERSION)
