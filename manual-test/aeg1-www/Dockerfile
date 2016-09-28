# to build
# docker build -t aeg1-www .
# 
# I am not sure why but i had to specify the netork 
# docker run -d -p 80:80 --network none aeg1-www

FROM webdeploy-iis

ADD aeg1-www.zip /

RUN Powershell -Command "Add-PSSnapin WDeploySnapin3.0; Restore-WDPackage -Package C:\aeg1-www.zip"

CMD ["powershell.exe", "-Command", "while($true) {curl -UseBasicParsing -Uri Http://127.0.0.1/aeg1;start-sleep -Seconds 20}"]
