FROM ubuntu:18.04

LABEL maintainer="Zhuoer Dong <dongzhuoer@mail.nankai.edu.cn>"

RUN sed -i 's/archive.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list \
 && sed -i 's/security.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list \
 && sed -i 's/archive.canonical.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list 

# install locales
RUN apt update && apt -y upgrade && apt -y install locales && rm -r /var/lib/apt/lists/ \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 

# enable wildcard & extended glob: http://mywiki.wooledge.org/glob#extglob
RUN echo "\n#enable wildcard\nshopt -s extglob" >> /etc/bash.bashrc
