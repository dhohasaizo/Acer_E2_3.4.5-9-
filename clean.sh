cd /home/doha/kernel/alps_ww_20130903_for_acer2/kernel
export CROSS_COMPILE=/home/doha/toolchain-4.6.3/bin/arm-linux-androideabi-
export TARGET_PRODUCT=simcom89_wet_jb2 MTK_ROOT_CUSTOM=../mediatek/custom
export TARGET_BUILD_VARIANT=user
make clean
make mrproper
