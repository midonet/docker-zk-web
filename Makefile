TAG := 1.0
IMAGE := girishkalele/docker-zk-web

all: build
	docker push $(IMAGE):$(TAG)

build:
	docker build -t $(IMAGE):$(TAG) .
