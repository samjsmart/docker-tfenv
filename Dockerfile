FROM alpine:latest

MAINTAINER Sam Smart (me@sam-smart.co.uk)

RUN apk update \
    && apk add --no-cache \
      bash \
      git \
      curl \
      python3 \
    && git clone https://github.com/tfutils/tfenv.git /opt/tfenv \
    && ln -s /opt/tfenv/bin/* /usr/local/bin \
    && pip3 install --upgrade pip \
    && pip3 install awscli --upgrade \
    && apk del \
        git \
    && rm -rf /var/cache/apk/*

SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash", "-c"]
