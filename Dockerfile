FROM debian:wheezy
MAINTAINER Steve Vega "steve.vega@hulilabs.com"

RUN apt-get update && apt-get install -y \
	ruby-dev \
	make

RUN gem install listen
RUN gem install sass
RUN gem install compass

VOLUME /input
VOLUME /output
VOLUME /images

WORKDIR /input

COPY config.rb /input/config.rb

ENTRYPOINT [ "compass" ]
