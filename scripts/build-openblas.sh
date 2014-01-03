#! /bin/sh

# only meant for usage on travis CI
git clone http://github.com/xianyi/OpenBLAS.git 
cd ./OpenBLAS  
echo "starting build"
2>/dev/null  1>/dev/null  make  NO_SHARED=1   
echo "make 1 of open blas done"
2>/dev/null  1>/dev/null  make  NO_SHARED=1
echo "about to install OpenBLAS"  ; 
sudo make install PREFIX=/usr  NO_SHARED=1 ; 