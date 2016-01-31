# Debian: SonarQube
#
# VERSION 0.0.1

# Pull the base image.
FROM sonarqube:5.1

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Install maven.
RUN apt-get update && apt-get install -y \
	maven