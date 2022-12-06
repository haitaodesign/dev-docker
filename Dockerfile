FROM node:16

WORKDIR /workspace

RUN yarn config set registry https://registry.npm.taobao.org -g
RUN yarn global add vue-cli

EXPOSE 8081:8081