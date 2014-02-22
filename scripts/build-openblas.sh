#! /bin/sh

# only meant for usage on travis CI
git clone https://github.com/ogrisel/OpenBLAS.git
cd ./OpenBLAS  
git checkout fix-non-smp-server-pthread_atfork-reference
echo "starting build"
2>/dev/null  1>/dev/null  make  NO_SHARED=1   
echo "make 1 of open blas done"
2>/dev/null  1>/dev/null  make  NO_SHARED=1
echo "about to install OpenBLAS"  ; 
sudo make install PREFIX=/usr  NO_SHARED=1 ; 