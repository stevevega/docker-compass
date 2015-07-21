# Compass

Compass is an open-source CSS Authoring Framework built with SASS.

> [Compass official website](http://compass-style.org/)

> [SASS official website](http://sass-lang.com/)

Built using alpine base image (35MB).

# How to use this image

## Compass watch

    docker run --rm -v [SCSS_DIR]:/input -v [CSS_DIR]:/output -v [IMAGES_DIR]:/images stevevega/compass watch

Replace [SCSS_DIR] with your host scss source directory and [CSS_DIR] with your host css output directory. Optionally you can add a volume for your sprite images, replace [IMAGES_DIR] with your images dir in the example above.

For other use cases you can replace `watch` with any of the compass [CLI commands](http://compass-style.org/help/documentation/command-line/).

## Adding custom configuration

Create a config.rb file in your [SCSS_DIR]

    css_dir = '../output'
    sass_dir = '.'
    images_dir = '../images'
    [YOUR_CUSTOM_CONFIG_HERE]

> [Compass configuration reference](http://compass-style.org/help/documentation/configuration-reference/).

## Using docker compose

[Docker compose] (https://docs.docker.com/compose/) is also an easy way to run compass with your existing project. For example:

    your-app:
      build: .
    compass:
      image: stevevega/compass
      command: watch
      volumes:
        - compass:/input
        - public/css:/output
        - public/img:/images
