all: build
.PHONY: all

build:
	docker build -t building5/dumb-init .
.PHONY: build

test: build
	docker build -t building5/dumb-init-test ./test
	docker run --rm building5/dumb-init-test
