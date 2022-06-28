create-db:
	PGPASSWORD=postgres psql -h localhost -U postgres -c 'CREATE DATABASE auth_svc;'
	PGPASSWORD=postgres psql -h localhost -U postgres -c 'CREATE DATABASE order_svc;'
	PGPASSWORD=postgres psql -h localhost -U postgres -c 'CREATE DATABASE product_svc;'