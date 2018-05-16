# 创建docker镜像


#基础镜像
FROM ubuntu

#维护者信息
MAINTAINER ZhuChengZhong 956281507@qq.com

#运行命令

RUN  apt-get update && apt-get install -y  vim

RUN mkdir -p  /test/test/

# 设置环境变量

ENV MY_PATH /test/test/test.txt

#进入容器时默认的目录
WORKDIR  /test/test

# 创建容器时执行的命令
CMD vim /test/test/test.txt
