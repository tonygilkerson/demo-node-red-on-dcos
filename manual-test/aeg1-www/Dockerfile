# to build
# docker build -t dev-api .


FROM webdeploy-iis

ADD dev-api.zip /

RUN Powershell -Command "Add-PSSnapin WDeploySnapin3.0; Restore-WDPackage -Package C:\dev-api.zip"

CMD ["powershell.exe", "-Command", "while($true) {curl -UseBasicParsing -Uri Http://127.0.0.1/api;start-sleep -Seconds 20}"]
