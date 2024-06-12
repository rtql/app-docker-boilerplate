build:
	docker-compose down
	docker-compose build
	docker-compose up -d
up:
	docker-compose up -d
down:
	docker-compose down
migrate:
	docker-compose exec -it php bash -c "php artisan migrate --seed"