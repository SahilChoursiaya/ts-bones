build:
	docker build -t ts-bones -f Dockerfile .

build-prod:
	docker build -t ts-bones-prod -f Dockerfile.production . 

run:
	docker run -p 8080:8080 --name ts-bone-contain -d ts-bones

kill:
	docker kill ts-bone-contain

rm-con:
	docker rm ts-bone-contain