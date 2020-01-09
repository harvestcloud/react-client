FROM node:8.17

WORKDIR /usr/src/app

ADD . ./

RUN yarn

CMD ["yarn", "start"]
