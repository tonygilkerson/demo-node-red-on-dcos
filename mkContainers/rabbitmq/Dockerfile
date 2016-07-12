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
