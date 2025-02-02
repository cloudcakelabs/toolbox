FROM alpine:3.21

RUN apk update \
    && apk add --no-cache \
            busybox-extras \
            arping \
            curl \
            bind-tools \
            ethtool \
            iperf3 \
            iproute2 \
            iputils-ping \
            kmod \
            netcat-openbsd \
            nmap \
            tcpdump \
            traceroute \
            wget \
            git \
    && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]