FROM debian:wheezy
MAINTAINER Steve Vega "steve.vega@hulilabs.com"

RUN apt-get update && apt-get install -y \
	ruby-dev \
	make

RUN gem install listen
RUN gem install sass -v 3.4.13
RUN gem install compass -v 1.0.3

VOLUME /input
VOLUME /output

WORKDIR /input

ENTRYPOINT [ "compass" ]