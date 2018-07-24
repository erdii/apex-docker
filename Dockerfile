FROM alpine:3.8

RUN apk add curl && \
	curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh

RUN adduser -S apex && \
	mkdir /apex && \
	chown apex /apex

USER apex
WORKDIR /apex

CMD ["/usr/local/bin/apex"]
