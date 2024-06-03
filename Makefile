deploy_dev:
	docker-compose -f ./deployment/docker-compose.yaml up -d

build_doc:
	docker exec credino-apidoc-service sh -c 'bundle exec middleman build --clean'

stop_docker:
	docker-compose -f ./deployment/docker-compose.yaml stop