FROM ubuntu:rolling

LABEL maintainer="Zhuoer Dong <dongzhuoer@mail.nankai.edu.cn>"

RUN sed -i 's/archive.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list \
 && sed -i 's/security.ubuntu.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list \
 && sed -i 's/archive.canonical.com/mirrors4.tuna.tsinghua.edu.cn/' /etc/apt/sources.list 

# install tzdata
RUN apt update && apt -y upgrade && apt -y install locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen && update-locale LC_ALL=en_US.UTF-8 \
    && apt -y purge locales && apt -y autoremove && rm -r /var/lib/apt/lists/
