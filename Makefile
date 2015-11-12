.PHONY: docker-builder notbit

docker-builder: Dockerfile builder
	docker build -t notbit-builder .

notbit:
	docker run --rm -i notbit-builder >notbit.tar
	docker build -t notbit -f Dockerfile.notbit .
