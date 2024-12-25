BUILD_DIR := docs

.PHONY: build
build:
	hugo --destination $(BUILD_DIR)

.PHONY: update-theme
update-theme:
	git submodule update --remote

.PHONY: dev
dev:
	hugo server -w

.PHONY: preview-production
preview-production: build
	python3 -m http.server 8080 --bind localhost --directory $(BUILD_DIR)
