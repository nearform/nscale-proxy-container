#!/bin/bash
HAPROXY="/etc/haproxy"
PIDFILE="/var/run/haproxy.pid"

cd "$HAPROXY"

while [ 1 ]
do
  echo starting...
  haproxy -f /etc/haproxy/haproxy.cfg -p "$PIDFILE"
done

