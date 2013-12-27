#!/bin/bash

sudo docker run -d -p 9987:9987/udp -v /var/lib/teamspeak3:/var/lib/teamspeak3:rw xac/teamspeak3-server
