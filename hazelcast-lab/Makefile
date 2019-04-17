SHELL := /bin/bash

default: run

hazelcast-cluster:
	docker-compose -f hazelcast.yml up -d

gwhazelcast:
	docker-compose -f gateway-hazelcast.yml up -d

log:
	docker-compose -f hazelcast.yml -f gateway-hazelcast.yml logs -f

run:
	docker-compose -f hazelcast.yml up -d && docker-compose -f gateway-hazelcast.yml up -d

clean-hazelcast:
	docker-compose -f hazelcast.yml stop && docker-compose -f hazelcast.yml rm -f

clean-gwhazelcast:
	docker-compose -f gateway-hazelcast.yml stop && docker-compose -f gateway-hazelcast.yml rm -f && docker volume prune -f


clean: clean-hazelcast clean-gwhazelcast
