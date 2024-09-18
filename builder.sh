#!/bin/bash
# docker labs/wn builder
#
TAGIN='v1.0.21'
TAGOUT='v1.0.27'
CLIB='v1.0.18'
docker build -t gmazzitelli/cygno-wn:${TAGOUT}-cygno --build-arg TAG=cygno-wn:${TAGIN}-cygno --build-arg CLIB=${CLIB} --no-cache -f Dockerfile.wn .
docker build -t gmazzitelli/cygno-lab:${TAGOUT}-cygno --build-arg TAG='notag' --build-arg CLIB=${CLIB} --no-cache -f Dockerfile.lab .
docker push gmazzitelli/cygno-wn:${TAGOUT}-cygno
docker push gmazzitelli/cygno-lab:${TAGOUT}-cygno
