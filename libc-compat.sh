LIB=ld-linux-x86-64.so.2

sudo apk add libc6-compat

sudo mkdir -p /lib64
sudo ln -sf /lib/$LIB /lib64/$LIB
