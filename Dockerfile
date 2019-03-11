############################################################
# Dockerfile
############################################################

# Set the base image
FROM alpine:latest

############################################################
# Configuration
############################################################
ENV VERSION "0.3.6"

############################################################
# Installation
############################################################

RUN apk add --no-cache bash curl &&\
    curl -L -o /usr/local/bin/goss https://github.com/aelsabbahy/goss/releases/download/v${VERSION}/goss-linux-amd64 &&\
    curl -L -o /usr/local/bin/dgoss https://raw.githubusercontent.com/aelsabbahy/goss/v${VERSION}/extras/dgoss/dgoss &&\
    chmod +x /usr/local/bin/goss &&\
    chmod +x /usr/local/bin/dgoss &&\
	apk del curl

############################################################
# Execution
############################################################
CMD [ "goss", "--help"]
