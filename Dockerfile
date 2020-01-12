# Build stage
FROM node:8.17 AS build
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
RUN yarn build
CMD ["yarn", "start"]

# Prod stage
FROM nginx:1.12-alpine as prod
COPY --from=build /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
