#!/bin/bash
#if [[ -n $BAMBOO_DOCKER_AUTO_HOST ]]; then
#sed -i "s/^.*Endpoint\": \"\(http:\/\/haproxy-ip-address:8000\)\".*$/    \"EndPoint\": \"http:\/\/$HOST:8000\",/" \
#    ${CONFIG_PATH:=config/production.example.json}
#fi

mkdir -p /var/haproxy
haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid
go run /root/go/src/github.com/QubitProducts/bamboo/bamboo.go -bind=":8000" -config=/root/go/src/github.com/QubitProducts/bamboo/config/production.example.json

#/usr/bin/supervisord
