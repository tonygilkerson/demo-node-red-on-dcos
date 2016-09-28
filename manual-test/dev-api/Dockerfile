# to build
# 	docker build -t dev-api .
#
# to test:
#	curl "http://127.0.0.1/api/accounts/1?token=sharp&suppressevents=true&dataformat=json" -usebasicparsing


FROM webdeploy-iis

ADD dev-api.zip /

RUN Powershell -Command "Expand-Archive C:\dev-api.zip -dest C:\inetpub\wwwroot\dev-api "

RUN Powershell -Command "import-module webadministration; New-Item 'IIS:\Sites\Default Web Site\api' -physicalPath C:\inetpub\wwwroot\dev-api -type Application"

RUN Powershell -Command "Add-WindowsFeature Web-App-Dev"

RUN Powershell -Command "Add-WindowsFeature Web-Asp-Net45 -IncludeAllSubFeature"

CMD ["powershell.exe", "-Command", "while($true) {curl -UseBasicParsing -Uri Http://127.0.0.1/api;start-sleep -Seconds 10}"]
