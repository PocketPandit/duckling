SHELL=/bin/bash

.PHONY: build

docker-build:
	docker buildx build --platform linux/arm64 -t duckling:arm64 .

build:
	COMPOSE_BAKE=true docker compose build

server:
	docker compose up -d

server-down:
	docker compose down

parse:
	curl "http://localhost:8050/parse" -H "Content-Type:application/x-www-form-urlencoded" --data 'text=$(text)'