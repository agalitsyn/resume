BUILD_DIR := docs

.PHONY: build
build:
	hugo --destination $(BUILD_DIR)

.PHONY: update-deps
update-deps:
	git submodule update --remote

.PHONY: start
start:
	hugo server -w

.PHONY: preview-production
preview-production:
	python3 -m http.server 8080 --bind localhost --directory $(BUILD_DIR)
