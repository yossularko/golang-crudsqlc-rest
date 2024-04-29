dev:
	docker-compose up -d

dev-down:
	docker-compose down

go:
	air

migrate:
	migrate create -ext sql -dir db/migrations -seq init_schema

migrate-up:
	migrate -path db/migrations -database "postgresql://root:pass@localhost:6500/contact_db?sslmode=disable" -verbose up

migrate-down:
	migrate -path db/migrations -database "postgresql://root:pass@localhost:6500/contact_db?sslmode=disable" -verbose down

sqlc:
	sqlc generate

.PHONY: sqlc