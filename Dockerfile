FROM golang:latest

WORKDIR /src
ADD grumpy /src
RUN make

ENV GOPATH /src/build
ENV PYTHONPATH /src/build/lib/python2.7/site-packages

WORKDIR /work
RUN mv /src/tools/grumpc /usr/bin/grumpc