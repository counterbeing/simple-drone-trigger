FROM  alpine

RUN apk add --update \
      && apk add curl \
      && rm -rf /var/cache/apk/* \
      && curl -L https://github.com/drone/drone-cli/releases/download/v0.7.0/drone_linux_amd64.tar.gz | tar zx -C /tmp \
      && install -t /usr/local/bin /tmp/drone \
      && rm -rf /tmp

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
