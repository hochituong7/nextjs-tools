#!/bin/bash

CMTool_image_uri=cmtool_nextjs;
CMTool_image_tag=$(echo ${RANDOM} | md5 | head -c 12;);
docker build -t ${CMTool_image_uri}:${CMTool_image_tag} -f ./docker/Dockerfile .
docker run -p 3000:3000 -i -t ${CMTool_image_uri}:${CMTool_image_tag} 
