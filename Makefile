build-dev:
	docker build -t fedevdocker .

run:
	docker run -itd -p 80:80 --name=front-nginx nginx:latest