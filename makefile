APP_NAME=gitVersion

VERSION=$(shell git rev-list -1 HEAD)

build:
	go build -ldflags "-X main.VERSION=$(VERSION)" -o $(APP_NAME) gitVersion.go

run: build
	./$(APP_NAME) version

clean:
	rm -f $(APP_NAME)
