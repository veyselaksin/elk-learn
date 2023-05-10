FROM ubuntu:20.04

RUN curl -L -O https://artifacts.elastic.co/downloads/apm-server/apm-server-7.10.2-amd64.deb
RUN dpkg -i apm-server-7.10.2-amd64.deb

COPY apm-server.yml /etc/apm-server/apm-server.yml

EXPOSE 8200

ENTRYPOINT ["/usr/share/apm-server/bin/apm-server", "-e", "-E", "output.elasticsearch.hosts=[\"elasticsearch:9200\"]"]
