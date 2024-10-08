build:
	@go build -o bin/golang-fullstack-nextjs

run: build
	@./bin/golang-fullstack-nextjs

test: 
	@go test -v ./...
