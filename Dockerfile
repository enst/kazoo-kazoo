FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum install -y kazoo-R15B

ADD entrypoint.sh /root/

#RUN mkdir -p /var/lib/rabbitmq/ \
#    /opt/kazoo/log /var/log/2600hz 

#RUN chown rabbitmq:daemon /var/lib/rabbitmq/ -R \
#  && chown kazoo:daemon /opt/kazoo /var/log/2600hz -R 

VOLUME ["/var/lib/rabbitmq", "/opt/kazoo/log", "/var/log/2600hz"]

ENTRYPOINT ["/root/entrypoint.sh"]



