FROM debian:buster

RUN set -x && \
    apt-get update && apt-get install -qq -y wget tar

RUN mkdir -p /etc/grafana && \
	mkdir -p /usr/share/grafana && \
	wget https://dl.grafana.com/oss/release/grafana-8.4.3.linux-amd64.tar.gz && \
	tar -zxvf grafana-8.4.3.linux-amd64.tar.gz --strip-components=1 -C /usr/share/grafana && \
	cp /usr/share/grafana/bin/grafana-server /bin && \
	cp "/usr/share/grafana/conf/sample.ini" "/etc/grafana/grafana.ini" && \
    cp "/usr/share/grafana/conf/ldap.toml" /etc/grafana/ldap.toml && \
    mkdir -p "/etc/grafana/provisioning/datasources"
    
COPY datasource.yml /etc/grafana/provisioning/datasources/.
ENTRYPOINT ["grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini", "cfg:default.paths.data=/var/lib/grafana","cfg:default.paths.provisioning=/etc/grafana/provisioning"]