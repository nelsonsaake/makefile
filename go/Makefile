.PHONY: dep test ncommit pull build run test lint clean prisma seed get

ARGS = $(filter-out $@,$(MAKECMDGOALS))

VERSION = v0.0.41

init:
	go mod init github.com/nelsonsaake/go

dep:
	go mod tidy
	git add .
	git commit -m "go: changes for $(VERSION)"
	git tag $(VERSION)
	git push origin main $(VERSION)
	@REM GOPROXY=proxy.golang.org go list -m https://github.com/nelsonsaake/go.git@$(VERSION)

test:
	go test ./...

ncommit:
	git add .
	git commit -m "ncommit"
	git push origin main

pull:
	git pull origin main 

build:
	go build -o bin/app main.go

run:
	go run .

test:
	go test ./...

lint:
	golangci-lint run

clean:
	rm -rf bin/*

prisma:
	@REM doskey prisma=go run github.com/steebchen/prisma-client-go $*
	go run github.com/steebchen/prisma-client-go $(ARGS)

# doskey do=make $*
plg:
	echo $(ARGS)

seed:
	go run ./lib/seed/.

get:
	cls
	go get github.com/nelsonsaake/go@v0.0.21