FROM ubuntu:trusty
RUN apt-get update
RUN apt-get install m2crypto git
RUN git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
RUN cd shadowsocks/shadowsocks
RUN python server.py -p 443 -k password -m aes-256-cfb -o http_simple -d start
