# Use the official image as a parent image.
ARG VERSION
ARG OS
FROM innovanon/${OS}${VERSION}:latest
ARG VERSION
ARG OS
MAINTAINER Innovations Anonymous <InnovAnon-Inc@protonmail.com>

LABEL version="1.0"                                                     \
      maintainer="Innovations Anonymous <InnovAnon-Inc@protonmail.com>" \
      about="Dev Environment in poobuntu"                               \
      org.label-schema.build-date=$BUILD_DATE                           \
      org.label-schema.license="PDL (Public Domain License)"            \
      org.label-schema.name="poobuntu-dev"                              \
      org.label-schema.url="InnovAnon-Inc.github.io/poobuntu-dev"       \
      org.label-schema.vcs-ref=$VCS_REF                                 \
      org.label-schema.vcs-type="Git"                                   \
      org.label-schema.vcs-url="https://github.com/InnovAnon-Inc/poobuntu-dev"

# Run the command inside your image filesystem.
# Copy the file from your host to your current location.
COPY dev-dpkg.list .
RUN apt-fast update \
 && apt-fast install `grep -v '^[\^#]' dev-dpkg.list`

#WORKDIR /
#RUN ./dev-clean.sh

