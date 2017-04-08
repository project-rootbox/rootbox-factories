#:DEPENDS git:project-rootbox/rootbox-factories///libc-compat.sh
#:DEPENDS git:project-rootbox/rootbox-factories///ncurses-compat.sh

set -e

GHC_SETTINGS="/usr/local/haskell/ghc-8.0.2-x86_64/lib/ghc-8.0.2/settings"

sudo apk add coreutils bash gmp-dev

tar xvf haskell.tgz
sudo sh install-haskell-platform.sh

# Workaround various linking issues that prevent you from building...anything!
sudo sed -i 's/-no-pie","NO/-no-pie","YES/g' "$GHC_SETTINGS"

stack config set system-ghc --global true
stack update
