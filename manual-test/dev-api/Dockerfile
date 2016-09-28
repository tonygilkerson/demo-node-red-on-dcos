# to build
# 	docker build -t dev-api .
# 	docker build -t tonygilkerson/dev-api:v1 .
# 	docker push tonygilkerson/dev-api:v1
# to run...
# 	docker run --name demo-dev-api -p 80:80 tonygilkerson/dev-api:v1
#
# to test:
#	replace the ip with the IP of the docker host
#	curl "http://127.0.0.1/api/accounts/1?token=sharp&suppressevents=true&dataformat=json" -usebasicparsing

FROM microsoft/iis

ADD WebDeploy_amd64_en-US.msi /WebDeploy_amd64_en-US.msi

ADD dev-api.zip /

RUN msiexec /i c:\WebDeploy_amd64_en-US.msi /qn

RUN Powershell -Command "Expand-Archive C:\dev-api.zip -dest C:\inetpub\wwwroot\dev-api "

RUN Powershell -Command "import-module webadministration; New-Item 'IIS:\Sites\Default Web Site\api' -physicalPath C:\inetpub\wwwroot\dev-api -type Application"

RUN Powershell -Command "Add-WindowsFeature Web-App-Dev"

RUN Powershell -Command "Add-WindowsFeature Web-Asp-Net45 -IncludeAllSubFeature"

CMD ["powershell.exe", "-Command", "while($true) {curl -UseBasicParsing -Uri Http://127.0.0.1/api;start-sleep -Seconds 10}"]
