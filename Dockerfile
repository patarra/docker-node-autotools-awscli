FROM node:9.11
RUN apt-get update && apt-get install -y \
            autoconf \
            automake \
            zsh \
            python \
            python-dev \
            jq \
            unzip \
            make
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && rm -rf ./awscli-bundle/install
RUN mkdir -p /mnt/code
WORKDIR /mnt/code
