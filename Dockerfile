FROM node:18.17.1-alpine
RUN apk add -U tzdata
ENV TZ="Asia/Tokyo"

RUN npm i -g next@13.4.19

WORKDIR /app
COPY ./nextjs .

RUN npm install --production
RUN npx prisma generate
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]