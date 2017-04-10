# set -e

REPO=http://public.portalier.com/alpine/testing
KEY=http://public.portalier.com//alpine/julien%40portalier.com-56dab02e.rsa.pub
KEYFILE=/etc/apk/keys/julien@portalier.com-56dab02e.rsa.pub

echo $REPO | sudo tee -a /etc/apk/repositories >/dev/null
sudo curl -Lo $KEYFILE $KEY

sudo apk update
sudo apk add yaml-dev crystal shards
