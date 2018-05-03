run:
	docker rm -f pimpbash || true
	docker build -t pimpbash .
	docker run --rm -d --name pimpbash pimpbash
	docker exec -ti pimpbash bash
