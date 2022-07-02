proto:
	protoc pkg/pb/order.proto --go_out=plugins=grpc:.
	protoc pkg/pb/product.proto --go_out=plugins=grpc:.

server:
	go run cmd/main.go

test-create-order:
	curl --request POST \
  --url http://localhost:3000/order \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODgzMDA2MzcsImlzcyI6ImdvLWdycGMtYXV0aC1zdmMiLCJJZCI6MSwiRW1haWwiOiJlbG9uQG11c2suY29tIn0.JhfOTaYOcLkNtw79Fuci9DjEfrr3gtDHFVqhu24EYUQ' \
  --header 'Content-Type: application/json' \
  --data '{"productId": 1,"quantity": 1}'