FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-R15B

ADD entrypoint.sh firsttime.sh /root/

VOLUME ["/var/lib/rabbitmq", "/opt/kazoo/log", "/var/log/2600hz"]

ENTRYPOINT ["/root/entrypoint.sh"]



