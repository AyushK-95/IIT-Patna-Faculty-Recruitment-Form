FROM node:17

# Working Dir
WORKDIR /usr/src/app

#Copy Package 
COPY package*.json ./

RUN npm install -g nodemon
RUN npm install
RUN npm rebuild bcrypt --build-from-source

COPY . . 

EXPOSE 8000

CMD ["node", "index.mjs"]


