FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-bigcouch-R15B

ADD entrypoint.sh /root/

VOLUME ["/srv", "/var/log"]

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 5984 5986



