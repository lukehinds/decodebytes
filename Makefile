.PHONY: build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell

buildup:
	rm -rf tmp/
	docker-compose -f docker-compose.yml up -d --build

build:
	docker-compose -f docker-compose.yml build $(c)
up:
	docker-compose -f docker-compose.yml up -d $(c)
start:
	docker-compose -f docker-compose.yml start $(c)
down:
	docker-compose -f docker-compose.yml down $(c)
destroy:
	docker-compose -f docker-compose.yml down -v $(c)
stop:
	docker-compose -f docker-compose.yml stop $(c)
restart:
	docker-compose -f docker-compose.yml stop $(c)
	docker-compose -f docker-compose.yml up -d $(c)
logs:
	docker-compose -f docker-compose.yml logs --tail=100 -f $(c)
logs-api:
	docker-compose -f docker-compose.yml logs --tail=100 -f api
ps:
	docker-compose -f docker-compose.yml ps
login-timescale:
	docker-compose -f docker-compose.yml exec timescale /bin/bash
login-api:
	 docker-compose -f docker-compose.yml exec api /bin/bash
