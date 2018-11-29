# Ubuntu in China (not zh)
[![Build Status](https://travis-ci.com/dongzhuoer/docker-ubuntu-cn.svg?branch=master)](https://travis-ci.com/dongzhuoer/docker-ubuntu-cn)

1. tsinghua apt mirror
1. UTF-8 locale

I use `mirrors4` to avoild auto resolving, which wastes a lot of time sometimes (especially when you use network of NKU)

# to do

`ls /etc/*/+([0-9])*` only works for interactive shell

```bash
docker run --rm dongzhuoer/ubuntu-cn:rolling bash -c 'ls /etc/*/+([0-9])*'
```
