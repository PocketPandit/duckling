SHELL=/bin/bash

.PHONY: build

build:
	docker buildx build --platform linux/arm64 -t duckling:arm64 .

server:
	docker compose up -d --build

server-down:
	docker compose down