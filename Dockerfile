FROM ubuntu:14.04

COPY ./sources.list.trusty /tmp

RUN cat /etc/apt/sources.list >> /tmp/sources.list.trusty \
	&& mv /tmp/sources.list.trusty /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get upgrade

CMD []
