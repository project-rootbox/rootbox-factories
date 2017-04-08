sudo apk add xz linenoise-dev libexecinfo-dev

curl -L https://nim-lang.org/download/nim-0.16.0.tar.xz -o nim.txz
tar xvf nim.txz
cd nim-0.16.0
./build.sh

bin/nim c koch
./koch boot -d:release -d:useLinenoise
sudo ./koch install /usr/local/bin

./koch nimble tools
sudo cp bin/nimsuggest bin/nimgrep bin/nimble /usr/local/bin
