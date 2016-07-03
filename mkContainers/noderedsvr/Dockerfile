FROM node:4.4.7

MAINTAINER Tony Gilkerson <tonygilkerson@yahoo.com>

# install node-red
RUN npm install -g node-red
RUN npm install -g node-red-contrib-amqp

#copy nodered config files into the app folder
ADD noderedcfg /usr/src/app/

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
CMD ["/usr/local/bin/node-red",  "--settings /usr/src/app/settings.js",  "/usr/src/app/flows.json"]
