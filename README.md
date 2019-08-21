# 基于docker的前端开发环境

此仓库为构建前端开发环境的 docker Imgage 文件

> 有同事感兴趣，可以通过分享的形式，学习把docker加入自己的开发工作流

## 通过Dockerfile构建容器

```
docker build -t fedevdocker .
```

## 启动容器服务

```
docker run --rm -it -p 8081:8081 -v /Users/lihaitao/Desktop:/workspace fedevdocker:latest sh
```
> `/Users/lihaitao/Desktop` 可以更换为本地的目录
