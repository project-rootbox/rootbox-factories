sudo apk add ocaml python3

git clone https://github.com/felix-lang/felix.git
cd felix
. buildscript/linuxsetup.sh
make build
sudo make install

echo 'export PATH=/usr/local/lib/felix/felix-latest:$PATH' > .profile
# XXX
sudo sed -i 's/flx_static/flx_static -static/' \
  /usr/local/lib/felix/felix-latest/host/config/flx.fpc
