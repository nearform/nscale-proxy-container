# nscale Haproxy Dockerfile

FROM ubuntu

RUN \
  sed -i 's/^# \(.*-backports\s\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y haproxy=1.5.3-1~ubuntu14.04.1 && \
  sed -i 's/^ENABLED=.*/ENABLED=1/' /etc/default/haproxy

RUN apt-get install psmisc

ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD start.bash /haproxy-start

WORKDIR /etc/haproxy

CMD ["bash", "/haproxy-start"]

