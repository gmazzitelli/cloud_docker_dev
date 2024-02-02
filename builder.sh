#!/bin/bash
# docker labs/wn builder
#
TAGIN='v1.0.21'
TAGOUT='v1.0.23'
docker build -t gmazzitelli/cygno-wn:${TAGOUT}-cygno --build-arg TAG=cygno-wn:${TAGIN}-cygno .
docker build -t gmazzitelli/cygno-lab:${TAGOUT}-cygno --build-arg TAG=cygno-lab:${TAGIN}-cygno .
docker push gmazzitelli/cygno-wn:${TAGOUT}-cygno
docker push gmazzitelli/cygno-lab:${TAGOUT}-cygno
