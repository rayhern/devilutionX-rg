rm -rf build
mkdir build
cd build/
cmake -DCMAKE_BUILD_TYPE="Release" -DASAN=OFF -DUBSAN=OFF -DDEBUG=OFF -DDIST=OFF -DPREFILL_PLAYER_NAME=ON -DBINARY_RELEASE=ON ..
make -j$(nproc)

