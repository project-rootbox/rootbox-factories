#:DEPENDS git:project-rootbox/rootbox-factories///dev/autotools.sh

sudo apk add pcre2-dev

git clone https://github.com/gvansickle/ucg.git
cd ucg
autoreconf -i
./configure
sudo make LDFLAGS=-all-static install
