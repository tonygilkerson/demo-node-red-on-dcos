# to build
# docker build -t webdeploy-iis .
FROM microsoft/iis

ADD WebDeploy_amd64_en-US.msi /WebDeploy_amd64_en-US.msi

RUN msiexec /i c:\WebDeploy_amd64_en-US.msi /qn
