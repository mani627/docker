FROM node:20-alpine
     
WORKDIR /app
#     copy files from our local machine to lightweight alphine os
COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5173

CMD [ "npm","run","dev" ]