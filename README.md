# Compass

Compass is an open-source CSS Authoring Framework.

> [Official website](http://compass-style.org/)

# How to use this image

## Compass watch

    docker run --rm -v [SCSS_DIR]:/input -v [CSS_DIR]:/output stevevega/compass watch

Replace [SCSS_DIR] with your host scss source directory and [CSS_DIR] with your host css output directory.

For other use cases you can replace `watch` with any of the compass [CLI commands](http://compass-style.org/help/documentation/command-line/).

## Adding custom configuration

Create a `Dockerfile`

    FROM stevevega:compass
    COPY config.rb /input/config.rb

> [Compass configuration reference](http://compass-style.org/help/documentation/configuration-reference/).

## Using docker compose

[Docker compose] (https://docs.docker.com/compose/) is also an easy way to run compass with your existing project. For example:

    your-app:
      build: .
    compass:
      build: compass
      command: watch
      volumes:
        - compass:/input
        - public/css:/output
