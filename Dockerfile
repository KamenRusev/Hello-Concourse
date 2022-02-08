FROM ubuntu:18.04

RUN echo "New image"
COPY concourse/ Hello-Concourse
RUN cat /concourse