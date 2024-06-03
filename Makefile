build_doc:
	bundle exec middleman build --clean

deploy_dev:
	docker-compose -f ./deployment/docker-compose.yaml up -d