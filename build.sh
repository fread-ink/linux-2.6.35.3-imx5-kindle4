#!/bin/sh

# created by juul

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j1 

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j1 uImage LOADADDR=0x70008000

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j1 targz-pkg

#depmod -ae -F System.map -b tar-install -r 2.6.31-rt11-lab126 -n > modules.dep

#sed -i 's/^kernel\//\/lib\/modules\/2.6.31-rt11-lab126\/kernel\//g' modules.dep

#mkdir -p COPY_TO_KINDLE

#cp arch/arm/boot/uImage COPY_TO_KINDLE/
#cp linux-2.6.31-rt11-lab126.tar.gz COPY_TO_KINDLE/
#cp modules.dep COPY_TO_KINDLE/

echo " "
echo "Build complete. Find the resulting uImage in arch/arm/boot/uImage"
echo " "
