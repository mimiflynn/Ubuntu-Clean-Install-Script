#!/bin/bash

echo "#-----------------------------------------------------------------------#"
echo "Install Haskell with dependencies"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install libgmp3-dev freeglut3 freeglut3-dev
sudo apt-get -y --force-yes install ghc-ghci

