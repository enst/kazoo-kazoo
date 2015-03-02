FROM bingli/kazoo-installer

RUN yum install -y kazoo-bigcouch-R15B

VOLUME ["/srv", "/var/log/bigcouch"]

EXPOSE 5984 5986

ADD entrypoint.sh /
ENTRYPOINT /entrypoint.sh

