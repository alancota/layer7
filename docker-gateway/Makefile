SHELL := /bin/bash

default: help

help: ## Use one of the following targets by running make <target>
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

log: ## Tail the gateway log file
	docker-compose -f gateway-derby.yml logs -f

run: ## Run the API gateway docker container without a MySQL DB
	docker-compose -f gateway-derby.yml up -d

clean: ## Stop and delete the container and prune the volumes
	docker-compose -f gateway-derby.yml stop && docker-compose -f gateway-derby.yml rm -f && docker volume prune -f
