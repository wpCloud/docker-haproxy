FROM million12/haproxy

ADD bin/haproxy.check.sh /usr/local/bin/haproxy.check.sh

CMD chmod +x /usr/local/bin/haproxy.check.sh

HEALTHCHECK   --interval=10s --timeout=3s --retries=10 CMD '/usr/local/bin/haproxy.check.sh'

RUN yum -y install socat 
