# git:project-rootbox/rootbox-factories///general/libc-compat.sh

REPO=sgerrand/alpine-pkg-glibc
VER=2.25-r0

sudo curl -fo /etc/apk/keys/sgerrand.rsa.pub \
    https://raw.githubusercontent.com/$REPO/master/sgerrand.rsa.pub
curl -Lfo glibc.apk \
    https://github.com/$REPO/releases/download/$VER/glibc-$VER.apk
sudo apk add glibc.apk
