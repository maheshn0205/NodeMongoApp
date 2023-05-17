FROM node:19-buster-slim
LABEL author="Mahesh"
LABEL creation-date="05/16/2023"
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /var/www
COPY package*.json .
RUN npm install
COPY . .
EXPOSE $PORT
ENTRYPOINT ["npm", "start"] 
