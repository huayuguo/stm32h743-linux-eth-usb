make -j4
cp ./arch/arm/boot/zImage .
cp ./arch/arm/boot/dts/stm32h743i-eval.dtb .
mkimage -n 'linux' -A arm -O linux -T kernel -C none -a 0xc1000000 -e 0xc1000000 -d zImage uImage
cp uImage win10image/
cp stm32h743i-eval.dtb win10image/
