FROM microsoft/windowsservercore
####FROM node:4.4.7

MAINTAINER Tony Gilkerson <tonygilkerson@yahoo.com>

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 4.5.0
#ENV NODE_SHA256 16aab15b29e79746d1bae708f6a5dbed8ef3c87426a9408f7261163d0cda0f56

#RUN powershell -Command \
# $ErrorActionPreference = 'Stop' ; \
# (New-Object System.Net.WebClient).DownloadFile('https://nodejs.org/dist/v%NODE_VERSION%/node-v%NODE_VERSION%-win-x64.zip', 'node.zip') ; \
# if ((Get-FileHash node.zip -Algorithm sha256).Hash -ne $env:NODE_SHA256) {exit 1} ; \
# Expand-Archive node.zip -DestinationPath C:\ ; \
# Rename-Item 'C:\node-v%NODE_VERSION%-win-x64' 'C:\nodejs' ; \
# New-Item '%APPDATA%\npm' ; \
# $env:PATH = 'C:\nodejs;%APPDATA%\npm;' + $env:PATH ; \
# [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine) ; \
# Remove-Item -Path node.zip

COPY node-dist C:\node-dist

 RUN powershell -Command \
  $ErrorActionPreference = 'Stop' ; \
  Expand-Archive -LiteralPath C:\node-dist\node-v4.5.0-win-x64.zip -DestinationPath C:\ ; \
  Rename-Item 'C:\node-v%NODE_VERSION%-win-x64' 'C:\nodejs' ; \
  New-Item '%APPDATA%\npm' ; \
  $env:PATH = 'C:\nodejs;%APPDATA%\npm;' + $env:PATH ; \
  [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine) ; \
  Remove-Item -LiteralPath C:\node-dist\node-v4.5.0-win-x64.zip

##################\node-dist

# install node-red
#####RUN npm install -g node-red

# add AQMP node to pallet
#####RUN npm install -g node-red-contrib-amqp

#copy nodered config files into the app folder
######ADD noderedcfg /usr/src/app/

# expose port
#EXPOSE 1880
EXPOSE 8080

# Set the default command to execute
# when creating a new container
#CMD ["/usr/local/bin/node-red",  "--settings /usr/src/app/settings.js",  "/usr/src/app/flows.json"]
CMD ["node.exe"]
#CMD ["cmd"]
