FROM ubuntu:18.04

LABEL maintainer="Zhuoer Dong <dongzhuoer@mail.nankai.edu.cn>"

RUN sed -i 's/archive.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list
RUN sed -i 's/archive.canonical.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/'   /etc/apt/sources.list

RUN apt update && apt -y install locales tzdata && rm -r /var/lib/apt/lists/
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen && update-locale LC_ALL=en_US.UTF-8
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
