FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-R15B

ADD entrypoint.sh /root/

VOLUME ["/var/log"]

ENTRYPOINT ["/root/entrypoint.sh"]



