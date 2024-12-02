setup:
	sudo snap install k6

create_service:
	docker service create \
		--name web-api \
		--replicas 2 \
		--publish published=3000,target=3000 \
		webapi:latest

test_traffic:
	k6 run test/traffic.js