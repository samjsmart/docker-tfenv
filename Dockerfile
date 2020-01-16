FROM alpine:latest

MAINTAINER Sam Smart (me@sam-smart.co.uk)

RUN apk update \
    && apk add --no-cache \
      bash \
      git \
      curl \
    && git clone https://github.com/tfutils/tfenv.git /opt/tfenv \
    && ln -s /opt/tfenv/bin/* /usr/local/bin \
    && apk del \
        git \
    && rm -rf /var/cache/apk/*;

ENTRYPOINT ["/bin/bash"]
