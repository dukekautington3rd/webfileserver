FROM alpine
MAINTAINER Lon Kaut <lonkaut@gmail.com>

ENV LANG C.UTF-8
RUN  \
  apk update \
  && apk add bash \
  && apk add upx \
  && echo -e "\033[0;31m****\033[0;37mThis Image stays alive artificially by tailing null, that way you can use it live till you kill it\033[0;31m****\033[0;0m"

ENTRYPOINT ["tail", "-f", "/dev/null"]
