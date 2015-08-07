FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum -y --nogpgcheck localinstall http://repo.2600hz.com/Packages/Kazoo/CentOS_6/x86_64/R15B/3.21/kazoo-R15B-3.21-13.el6.x86_64.rpm

ADD entrypoint.sh init.sh /root/

VOLUME ["/var/lib/rabbitmq", "/opt/kazoo/log", "/var/log/2600hz", "/var/www/html"]

ENTRYPOINT ["/root/entrypoint.sh"]



