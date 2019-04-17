SHELL := /bin/bash

default: help

help: ## Use one of the following targets by running make <target>
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

deploy: ## Deploy the API Gateway to your Kubernetes cluster
	./prepare.sh && kubectl apply -f config.yml -f mysql.yml -f gateway.yml && watch kubectl get pods -o=wide

clean: ## Deletes the deployment and clean everything
	kubectl delete deployment gw-dc mysql && kubectl delete svc gw-svc mysql-server && kubectl get pods

k8s: ## Check your Kubernetes cluster
	kubectl cluster-info && kubectl get all

reset-license:
	rm config.yml && cp ../tmp/config.yml .