REPO=registry.gitlab.com/docker-master/ngino_proxy

##########################
# Build images      	 #
##########################
.PHONY: push-images
push-images: --build-images
	docker push $(REPO)

--build-images:
	docker build -t $(REPO) -f docker/Dockerfile .
	@if [ $(version) ]; then\
		docker tag $(REPO) $(REPO):$(version);\
	fi