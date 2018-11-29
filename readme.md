# Overview
[![Build Status](https://travis-ci.com/dongzhuoer/docker-ubuntu-cn.svg?branch=master)](https://travis-ci.com/dongzhuoer/docker-ubuntu-cn)

Ubuntu in China (not zh)

`latest` tag is the same as the version used by Zhuoer Dong

# features

1. tsinghua apt mirror
1. UTF-8 locale
1. bash enable wildcard & extended glob

# to do

`ls /etc/*/+([0-9])*` only works for interactive shell

```bash
docker run --rm dongzhuoer/ubuntu-cn:rolling bash -c 'ls /etc/*/+([0-9])*'
```
