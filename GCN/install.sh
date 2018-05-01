#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Install CPU version..."
cd $DIR/gcn
rm -r ./build
luarocks make gcn-scm-1.rockspec
echo "Testing CPU version..."
th ./test.lua

echo "Install GPU version..."
cd $DIR/cugcn
rm -r ./build
luarocks make cugcn-scm-1.rockspec
echo "Testing GPU version..."
th ./test.lua

echo "Install CuDNN version..."
cd $DIR/cudnngcn
rm -r ./build
luarocks make cudnngcn-scm-1.rockspec
echo "Testing CuDNN version..."
th ./test.lua

echo "-------------------------------"
echo "All done!"

