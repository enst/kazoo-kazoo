FROM bingli/kazoo-installer
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-bigcouch-R15B

ADD entrypoint.sh /root/

VOLUME ["/srv"]

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 5984 5986



