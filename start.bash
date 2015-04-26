#!/bin/bash
HAPROXY="/etc/haproxy"
PIDFILE="/var/run/haproxy.pid"

cd "$HAPROXY"
exec haproxy -f /etc/haproxy/haproxy.cfg -p "$PIDFILE"
