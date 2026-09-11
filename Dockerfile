FROM node:24.18.0

WORKDIR /solution

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3030

CMD [ "npm", "start" ]

