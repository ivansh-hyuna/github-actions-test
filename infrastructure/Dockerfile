FROM node:10 as node
ARG type=base

COPY . /ma_client
WORKDIR /ma_client
RUN npm i
RUN npm rebuild node-sass
RUN npm run $type

FROM nginx:alpine
COPY --from=node /ma_client/dist /ma_client
