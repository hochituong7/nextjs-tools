#!/bin/bash
docker stop $(docker ps -aq)
docker-compose -f ./docker/docker-compose-db.yml up -d

# specify version of node, need only 1
# npm install -g n 
# sudo n 18.17.1

cp .env.development nextjs/.env
cd nextjs
npm install
npx prisma generate
npx prisma migrate dev 
npm run dev
