BUILD_DIR := docs

.PHONY: build
build:
	hugo --destination $(BUILD_DIR)

.PHONY: dev
dev:
	hugo server -w

.PHONY: preview
preview:
	python3 -m http.server 8080 --bind localhost --directory $(BUILD_DIR)
