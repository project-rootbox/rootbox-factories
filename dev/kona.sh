git clone https://github.com/kevinlawler/kona.git
cd kona
sed -i '1s;^;#include <sys/select.h>;' src/kc.h
sed -i '1s;^;#include <sys/select.h>;' src/kn.h
make CC='gcc -static'
