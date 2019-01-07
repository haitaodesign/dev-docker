# centos7
FROM centos
LABEL fe="dev-docker" maintainer="liht<liht@7moor.com>"

RUN yum -y update
RUN yum -y install tar git
# 配置环境变量
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 10.15.0
ENV WORK_DIR /workspace
ENV NVM_NODEJS_ORG_MIRROR https://npm.taobao.org/mirrors/node
# nvm 多node版本管理
# node 下载需要的node版本
RUN mkdir /usr/local/nvm
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install v$NODE_VERSION \
    && nvm use v$NODE_VERSION \
    && nvm alias default v$NODE_VERSION

# RUN node -v
# nrm 镜像源切换
# RUN npm i nrm -g --registry=https://registry.npm.taobao.org
# RUN nrm use taobao

# yarn 安装
# RUN npm i yarn -g

# vue-cli vue项目脚手架安装
# RUN yarn global add vue-cli
# 工作目录
WORKDIR $WORK_DIR
# 暴露端口
EXPOSE 8081
# 如何挂载主机目录？这里有点不太理解，具体操作有问题
