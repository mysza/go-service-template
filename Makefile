OUTPUT := goservicetemplate
GOOS := linux # this is a default, changed later
MAINFILE := ./cmd/main.go

ifeq ($(OS),Windows_NT)
	OUTPUT := $(OUTPUT).exe
	GOOS := windows
else
  UNAME_S := $(shell uname -s)
  ifeq ($(UNAME_S),Linux)
      GOOS := linux
  endif
  ifeq ($(UNAME_S),Darwin)
      GOOS := darwin
  endif
endif

.PHONY: all clean build test fmt vet

default: all

all: clean fmt vet test build

clean:
	rm -rf $(OUTPUT)
	godep go clean ./...

bootstrap:
	go get github.com/tools/godep
	godep restore
	
build: clean fmt vet
	export CGO_ENABLED=0
	export GOOS=$(GOOS)
	godep go build -a -installsuffix cgo -o ./_dist/$(OUTPUT) $(MAINFILE)

test:
	godep go test ./... -ginkgo.failOnPending -ginkgo.randomizeAllSpecs -ginkgo.skipMeasurements=true

fmt:
	go fmt ./...

vet:
	go vet ./...