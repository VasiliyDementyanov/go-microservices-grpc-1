proto:
	protoc pkg/pb/product.proto --go_out=plugins=grpc:.

server:
	go run cmd/main.go

test-create-product:
	curl --request POST \
	--url http://localhost:3000/product/create \
	--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODgzMDA2MzcsImlzcyI6ImdvLWdycGMtYXV0aC1zdmMiLCJJZCI6MSwiRW1haWwiOiJlbG9uQG11c2suY29tIn0.JhfOTaYOcLkNtw79Fuci9DjEfrr3gtDHFVqhu24EYUQ' \
	--header 'Content-Type: application/json' \
	--data '{"name": "Product A","stock": 5,"price": 15}'

test-find-one-product:
	curl --request GET \
  	--url http://localhost:3000/product/1 \
  	--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODgzMDA2MzcsImlzcyI6ImdvLWdycGMtYXV0aC1zdmMiLCJJZCI6MSwiRW1haWwiOiJlbG9uQG11c2suY29tIn0.JhfOTaYOcLkNtw79Fuci9DjEfrr3gtDHFVqhu24EYUQ'