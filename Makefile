#!/usr/bin/make -f

# Ensuring we always run these despite any naming collisions that may happen in our root directory
.PHONY: up down

srcdir = .

# https://www.portainer.io/
# A web based docker monitor - check it out at localhost:9000
up :
	docker-compose -f docker-compose.yml -p docker_monitor up -d

down :
	docker-compose -f docker-compose.yml -p docker_monitor down
