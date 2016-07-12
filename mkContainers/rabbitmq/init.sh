#!/bin/sh

#create default exchanges and queues
cp /etc/rabbitmq/rabbitmqadmin /usr/local/bin
chmod +x /usr/local/bin/rabbitmqadmin

# Create Default RabbitMQ setup
( sleep 10 ; \

# Create users
# rabbitmqctl add_user <username> <password>
#rabbitmqctl add_user test_user test_user ; \

# Set user rights
# rabbitmqctl set_user_tags <username> <tag>
#rabbitmqctl set_user_tags test_user administrator ; \

# Create vhosts
# rabbitmqctl add_vhost <vhostname>
#rabbitmqctl add_vhost my_vhost ; \

# Set vhost permissions
# rabbitmqctl set_permissions -p <vhostname> <username> ".*" ".*" ".*"
#rabbitmqctl set_permissions -p my_vhost test_user ".*" ".*" ".*" ; \

# Import config for nch_host
rabbitmqadmin import /etc/rabbitmq/broker_config.json

) &
rabbitmq-server $@
