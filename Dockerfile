FROM bingli/kazoo-installer
MAINTAINER Bing Li <enst.bupt@gmail.com>

RUN yum install -y kazoo-bigcouch-R15B

ADD entrypoint.sh /root/

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 5984 5986



