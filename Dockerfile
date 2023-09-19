
#parent layer where we get the software with the version and the linux machine for example alpine here 
FROM node:17-alpine

RUN npm install -g nodemon
#all the other layers
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000
# required for docker desktop port mapping

CMD ["npm", "run" , "dev"]