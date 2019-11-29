# .profile

# Get the aliases and functions
export ENV=$HOME/.ashrc

# Paths
export PATH=$PATH:$HOME/.local/bin
export KISS_PATH=$KISS_PATH:/var/db/kiss/community/community

# Build flags
export CFLAGS="-march=native -O3 -pipe"
export CXXFLAGS="-march=native -O3 -pipe"
export MAKEFLAGS="-j4"

# Others
export LESSHISTFILE=-
export NNN_OPENER=opn
export PF_INFO="title os host kernel uptime pkgs memory palette"
