REPO=sgerrand/alpine-pkg-glibc
VER=2.25-r0
KEY=https://raw.githubusercontent.com/$REPO/master/sgerrand.rsa.pub
APK=https://github.com/$REPO/releases/download/$VER/glibc-$VER.apk

sudo curl -fo /etc/apk/keys/sgerrand.rsa.pub $KEY
curl -Lfo glibc.apk $APK
sudo apk add glibc.apk
