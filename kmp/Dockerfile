#
# Grab the Kerbal Multiplayer mod from http://sesau.ca/ksp/KMP.html
# (https://github.com/TehGimp/KerbalMultiPlayer on GitHub)
#

from	ubuntu:12.04
run	apt-get install -y -q mono-runtime mono-devel

add	.	/srv/kmp

WORKDIR /srv/kmp
ENTRYPOINT ["mono", "KMPServer.exe"]
EXPOSE 2076
