FROM ubuntu:latest

RUN apt-get -y update && \
    apt-get install -y wget && \
    apt-get install -y curl && \
    apt-get -y install jq && \
    apt-get -y install snapd && \
    wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 && \
    chmod a+x /usr/local/bin/yq
RUN  curl -Lo yaml2json https://github.com/wakeful/yaml2json/releases/latest/download/yaml2json-linux-amd64 && chmod +x yaml2json && mv yaml2json /usr/local/bin/