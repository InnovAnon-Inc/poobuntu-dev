# Use the official image as a parent image.
FROM innovanon/poobuntu:latest
MAINTAINER Innovations Anonymous <InnovAnon-Inc@protonmail.com>

LABEL version="1.0"
LABEL maintainer="Innovations Anonymous <InnovAnon-Inc@protonmail.com>"
LABEL about="Dev Environment in poobuntu"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.license="PDL (Public Domain License)"
LABEL org.label-schema.name="poobuntu-dev"
LABEL org.label-schema.url="InnovAnon-Inc.github.io/poobuntu-dev"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-type="Git"
LABEL org.label-schema.vcs-url="https://github.com/InnovAnon-Inc/poobuntu-dev"

# Run the command inside your image filesystem.
# Copy the file from your host to your current location.
COPY dpkg.list .
RUN apt-fast install `cat dpkg.list`

WORKDIR /

#RUN apt-mark manual libev4
#RUN apt-fast purge --autoremove -y `cat dpkg.list`
#RUN ./poobuntu-clean.sh
#RUN rm -v dpkg.list poobuntu-clean.sh

