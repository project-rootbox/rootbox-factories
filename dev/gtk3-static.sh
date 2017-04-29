set -e

SOURCES=http://ftp.gnome.org/pub/gnome/sources

GOBJ=gobject-introspection
GOBJ_MAJ_VER=1.52
GOBJ_MIN_VER=1.52.1
GOBJ_SOURCES=$SOURCES/$GOBJ/$GOBJ_MAJ_VER/$GOBJ-$GOBJ_MIN_VER.tar.xz

GDKPIX=gdk-pixbuf
GDKPIX_MAJ_VER=2.36
GDKPIX_MIN_VER=2.36.6
GDKPIX_SOURCES=$SOURCES/$GDKPIX/$GDKPIX_MAJ_VER/$GDKPIX-$GDKPIX_MIN_VER.tar.xz

PANGO=pango
PANGO_MAJ_VER=1.40
PANGO_MIN_VER=1.40.5
PANGO_SOURCES=$SOURCES/$PANGO/$PANGO_MAJ_VER/$PANGO-$PANGO_MIN_VER.tar.xz

ATK=atk
ATK_MAJ_VER=2.24
ATK_MIN_VER=2.24.0
ATK_SOURCES=$SOURCES/$ATK/$ATK_MAJ_VER/$ATK-$ATK_MIN_VER.tar.xz

GTK=gtk+
GTK_MAJ_VER=3.22
GTK_MIN_VER=3.22.12
GTK_SOURCES=$SOURCES/$GTK/$GTK_MAJ_VER/$GTK-$GTK_MIN_VER.tar.xz

sudo apk add xz glib-static@edge glib-dev@edge flex bison python2-dev \
                tiff-dev libpng-dev

curl -Lfo gobj.txz $GOBJ_SOURCES
tar xvf gobj.txz
cd $GOBJ-$GOBJ_MIN_VER
./configure
sudo make install

curl -Lfo gdkpix.txz $GDKPIX_SOURCES
tar xvf gdkpix.txz
cd $GDKPIX-$GDKPIX_MIN_VER
./configure --enable-static --prefix=/usr
sudo make install

curl -Lfo pango.txz $PANGO_SOURCES
tar xvf pango.txz
cd $PANGO-$PANGO_MIN_VER
./configure --enable-static --prefix=/usr
sudo make install

curl -Lfo atk.txz $ATK_SOURCES
tar xvf atk.txz
cd $ATK-$ATK_MIN_VER
./configure --enable-static --prefix=/usr
sudo make install

curl -Lfo gtk.txz $GTK_SOURCES
tar xvf gtk.txz
cd $GTK-$GTK_MIN_VER
./configure --enable-static --prefix=/usr
sed -i 's/tests testsuite//' Makefile
sudo make install
