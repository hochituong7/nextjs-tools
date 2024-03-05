#!/bin/bash

NextJSTool_image_uri=nextjs_tools;
NextJSTool_image_tag=$(echo ${RANDOM} | md5 | head -c 12;);
docker build -t ${NextJSTool_image_uri}:${NextJSTool_image_tag} -f ./docker/Dockerfile .
docker run -p 3000:3000 -i -t ${NextJSTool_image_uri}:${NextJSTool_image_tag} 
