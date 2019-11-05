# .profile

# Get the aliases and functions
export ENV=$HOME/.ashrc

# Paths
export PATH=$PATH:$HOME/.local/bin
export KISS_PATH=$KISS_PATH:/var/db/kiss/community/community

# Build flags
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="-O3 -pipe -march=native"
export MAKEFLAGS="-j4"
