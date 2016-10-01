# $ docker build -t tonygilkerson/rabbitmqsvr:v1 .
# $ docker push tonygilkerson/rabbitmqsvr:v1
#
# verify...
# $ docker run --hostname demo-host --name demo-rabbit -e RABBITMQ_DEFAULT_VHOST=demo-vhost -p 15672:15672 -p 5672:5672 -p 25672:25672 tonygilkerson/rabbitmqsvr:v1
#

FROM rabbitmq:3-management

MAINTAINER Tony Gilkerson <tonygilkerson@yahoo.com>

# install python
RUN apt-get update && apt-get install -y python2.7

# default exchange and queues
ADD rabbitmqcfg /etc/rabbitmq/

# Add script to create import config then start
ADD init.sh /init.sh

# Set correct executable permissions
RUN chmod +x /init.sh

# expose port
EXPOSE 5672 15672 25672

# Define default command
CMD ["/init.sh"]
