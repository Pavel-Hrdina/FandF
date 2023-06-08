.DEFAULT_GOAL := build

BINARY := fandf
BUILD_DIR := ./tmp
GOARCH = amd64

VERSION?=?
COMMIT=$(shell git rev-parse HEAD)
BRANCH=$(shell git rev-parse --abbrev-ref HEAD)

LDFLAGS = -ldflags "-X main.VERSION=${VERSION} -X main.COMMIT=${COMMIT} -X main.BRANCH=${BRANCH}"
# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
.PHONY: help
help:
		@echo 'Usage:'
		@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: confirm
confirm::
		@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]

.PHONY: no-dirty
no-dirty:
		git diff --exit-code

# ==================================================================================== #
# QUALITY CONTROL
# ==================================================================================== #

## fmt: format code and tidy modfile
fmt:
		gofumpt -l -w ./..
		go mod tidy -v
.PHONY:fmt

#
lint: fmt
		golint ./...
.PHONY:lint

vet: fmt
		go vet ./...
.PHONY:vet

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## build: build the application
build: vet
	GOOS=linux GOARCH=${GOARCH} go build ${LDFLAGS} -o ${BUILD_DIR}/${BINARY}-linux-${GOARCH} . ; \

	GOOS=darwin GOARCH=${GOARCH} go build ${LDFLAGS} -o ${BUILD_DIR}/${BINARY}-darwin-${GOARCH} . ; \

	GOOS=windows GOARCH=${GOARCH} go build ${LDFLAGS} -o ${BUILD_DIR}/${BINARY}-windows-${GOARCH} . ; \
