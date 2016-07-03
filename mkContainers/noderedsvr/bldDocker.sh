#!/bin/bash
#
# usage
#   bldDocker.sh
#
docker build -t tonygilkerson/noderedsvr:v1 .
echo build is done, now you should login to docker Hub and run this:
echo docker push tonygilkerson/noderedsvr:v1
