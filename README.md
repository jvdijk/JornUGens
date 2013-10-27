JornUGens
=========

Clone Supercollider repo:
git@github.com:supercollider/supercollider.git

Run the following to build:
mkdir build
cd build
cmake -DSC_PATH=/path/to/supercollider/repo .. 
make 

To create an xcode project:
cmake -DSC_PATH=/path/to/supercollider/repo -G Xcode .. 

Copy the .scx and the .sc files to the following folder:
~/Library/Application\ Support/SuperCollider/Extensions/
