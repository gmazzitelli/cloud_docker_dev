#!/bin/bash
# docker labs/wn builder
#
TAGIN='v1.0.21'
TAGOUT='v1.0.26'
docker build -t gmazzitelli/cygno-wn:${TAGOUT}-cygno --build-arg TAG=cygno-wn:${TAGIN}-cygno -f Dockerfile.wn .
docker build -t gmazzitelli/cygno-lab:${TAGOUT}-cygno --build-arg TAG='notag' -f Dockerfile.lab .
docker push gmazzitelli/cygno-wn:${TAGOUT}-cygno
docker push gmazzitelli/cygno-lab:${TAGOUT}-cygno
