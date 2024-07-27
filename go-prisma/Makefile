.PHONY: run tidy get prisma-db-push prisma-gen prisma-db-pull prisma-migrate-dev prisma-migrate-deploy

run:
	cls
	go run .

tidy:
	go mod tidy

get:
	go get github.com/steebchen/prisma-client-go

prisma-db-push:
	@REM sync the database with your schema for development
	go run github.com/steebchen/prisma-client-go db push

prisma-gen:
	@REM just re-generate the Go client
	go run github.com/steebchen/prisma-client-go generate

prisma-db-pull:
	@REM create a prisma schema from your existing database
	go run github.com/steebchen/prisma-client-go db pull

prisma-migrate-dev:
	@REM for production use, create a migration locally
	go run github.com/steebchen/prisma-client-go migrate dev
 
prisma-migrate-deploy:
	@REM sync your production database with your migrations
	go run github.com/steebchen/prisma-client-go migrate deploy

