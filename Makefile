# Build the image.
.PHONY: build
build:
	docker build -t sonarqube-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop sonarqube-container
	docker rm sonarqube-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm sonarqube-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the container.
.PHONY: run
run:
	docker run -d --name sonarqube-container -p 9000:9000 -p 9092:9092 sonarqube-image

# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it sonarqube-container bash