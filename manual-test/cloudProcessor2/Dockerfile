# to build
# docker build -t cloudcrocessor2 .
# 
# I am not sure why but i had to specify the netork 
# docker run -d  cloudcrocessor2
#
# use the following powershell command from within the container to verify it is running
# 	Get-Process CloudProcessor2

FROM microsoft/windowsservercore

ADD CloudProcessor2.zip /

RUN Powershell -Command "Expand-Archive C:\\CloudProcessor2.zip -dest C:\\ "

RUN Powershell -Command "Start-Process -FilePath \"C:\CloudProcessor2\CloudProcessor2.exe\" -ArgumentList \"-install\" -NoNewWindow -Wait"

RUN Powershell -Command "Set-Service CloudProcessor2 -startuptype \"Automatic\" "

CMD ["powershell.exe", "-Command", "while($true) {echo 'CloudProcessor2 is running...';start-sleep -Seconds 10}"]

