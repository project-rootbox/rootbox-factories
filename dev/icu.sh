URL=http://download.icu-project.org/files/icu4c/59.1/icu4c-59_1-src.tgz

sudo ln -s /usr/include/locale.h /usr/include/xlocale.h

curl -Lfo icu4c.tgz $URL
tar xvf icu4c.tgz

cd icu/source
./configure --enable-static --prefix=/usr
sudo make install
