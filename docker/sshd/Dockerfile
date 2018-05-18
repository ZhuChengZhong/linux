FROM ubuntu:14.04

MAINTAINER zhuchengzhong 956281507@qq.com

RUN apt-get update 

RUN apt-get install -y  openssh-server


#创建sshd运行时所需目录

RUN mkdir -p /var/run/sshd

RUN mkdir -p /root/.ssh

#允许root用户登录

RUN sed -i  's/PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config

#复制配置文件到相应的目录

Add authorized_keys /root/.ssh/authorized_keys

Add run.sh /run.sh

# 开放端口
EXPOSE 22

#运行ssh服务
CMD /run.sh
