
proto:
	protoc ./pkg/pb/auth.proto --go_out=plugins=grpc:.

server:
	go run cmd/main.go

test-register:
	curl --request POST \
  	--url http://localhost:3000/auth/register \
  	--header 'Content-Type: application/json' \
  	--data '{"email": "elon@musk.com","password": "1234567"}'

test-login:
	curl --request POST \
  	--url http://localhost:3000/auth/login \
  	--header 'Content-Type: application/json' \
  	--data '{"email": "elon@musk.com","password": "1234567"}'