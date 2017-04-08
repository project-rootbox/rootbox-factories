#:DEPENDS git:project-rootbox/rootbox-factories///libc-compat.sh
#:DEPENDS git:project-rootbox/rootbox-factories///ncurses-compat.sh

set -e

URL="https://haskell.org/platform/download/8.0.2/haskell-platform-8.0.2-unknown-posix--minimal-x86_64.tar.gz"
GHC_SETTINGS="/usr/local/haskell/ghc-8.0.2-x86_64/lib/ghc-8.0.2/settings"

sudo apk add coreutils bash gmp-dev

curl -Lo haskell.tgz "$URL"
tar xvf haskell.tgz

sudo sh install-haskell-platform.sh

# Workaround various linking issues that prevent you from building...anything!
sudo sed -i 's/-no-pie","NO/-no-pie","YES/g' "$GHC_SETTINGS"

stack config set system-ghc --global true
stack update
