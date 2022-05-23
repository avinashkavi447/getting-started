FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
#RUN chmod +x  entrypoint.sh
ENTRYPOINT [ "node", "src/index.js"  ]
#CMD ["node", "src/index.js"]
EXPOSE 3000
