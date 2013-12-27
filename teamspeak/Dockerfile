FROM ubuntu:12.04

EXPOSE 9987

ADD http://files.teamspeak-services.com/releases/3.0.10.1/teamspeak3-server_linux-amd64-3.0.10.1.tar.gz /tmp/

#RUN useradd -r -m -d /var/lib/teamspeak3 teamspeak
RUN cd /srv && tar xvzf /tmp/teamspeak3-server_linux-amd64-3.0.10.1.tar.gz
#RUN chown -R teamspeak /srv/teamspeak3-server_linux-amd64

# This needs to be mounted from the host side with a SQLite DB in it, etc.
VOLUME /var/lib/teamspeak3

#USER teamspeak
WORKDIR /var/lib/teamspeak3
ENV LD_LIBRARY_PATH /srv/teamspeak3-server_linux-amd64
ENTRYPOINT ["/srv/teamspeak3-server_linux-amd64/ts3server_linux_amd64", "dbsqlpath=/srv/teamspeak3-server_linux-amd64/sql/"]
