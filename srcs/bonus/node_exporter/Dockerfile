FROM debian:buster

RUN set -x && \
    apt-get update && apt-get install -qq -y wget tar && \
    wget https://github.com/prometheus/node_exporter/releases/download/v1.4.0-rc.0/node_exporter-1.4.0-rc.0.linux-amd64.tar.gz && \
    tar xvfz node_exporter-1.4.0-rc.0.linux-amd64.tar.gz && \
    cd node_exporter-1.4.0-rc.0.linux-amd64

CMD ["./node_exporter-1.4.0-rc.0.linux-amd64/node_exporter"]