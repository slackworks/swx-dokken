#to update starbound run 'app_update 211820' in steamcmd
#copy starbound folder into directory you are building container in

FROM stackbrew/debian:7.2

RUN apt-get install debian-archive-keyring && apt-get update

RUN apt-get install -y libvorbisfile3 wget
RUN dpkg --add-architecture i386 && apt-get update
RUN apt-get install -y ia32-libs

RUN apt-get install -y libpng12-0 libfreetype6

ADD starbound-steam/assets starbound/assets
ADD starbound-steam/linux64 starbound/linux64
 
WORKDIR starbound/linux64
 
ENTRYPOINT ./launch_starbound_server.sh
