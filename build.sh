#script compile kernel acer e2 by doha saizo
#setting build
cd /home/doha/kernel/alps_ww_20130903_for_acer2/kernel
export CROSS_COMPILE=/home/doha/toolchain-4.6.3/bin/arm-linux-androideabi-
export TARGET_PRODUCT=simcom89_wet_jb2 MTK_ROOT_CUSTOM=../mediatek/custom
export TARGET_BUILD_VARIANT=user
make -j2

#reduce module
cd /home/doha/kernel/alps_ww_20130903_for_acer2/kernel
export CROSS_COMPILE=/home/doha/toolchain-4.6.3/bin/arm-linux-androideabi-
export TARGET_PRODUCT=simcom89_wet_jb2 MTK_ROOT_CUSTOM=../mediatek/custom
export TARGET_BUILD_VARIANT=user
make INSTALL_MOD_STRIP=1 INSTALL_MOD_PATH=./out/$TARGET_PRODUCT/system INSTALL_MOD_DIR=./out/$TARGET_PRODUCT/system android_modules_install


#adding 512kb header
cd /home/doha/kernel/alps_ww_20130903_for_acer2/mediatek/build/tools
./mkimage /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/arch/arm/boot/zImage KERNEL > /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/boot.img-kernel.img

#copying modules
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/zram.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/zram.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/ccci.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/ccci.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/ccci_plat.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/ccci_plat.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/devapc.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/devapc.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/devinfo.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/devinfo.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/hid-logitech-dj.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/hid-logitech-dj.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_fm_drv.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_fm_drv.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_hif_sdio.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_hif_sdio.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_stp_bt.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_stp_bt.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_stp_gps.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_stp_gps.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_stp_uart.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_stp_uart.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_stp_wmt.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_stp_wmt.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtk_wmt_wifi.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtk_wmt_wifi.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/mtklfb.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/mtklfb.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/pvrsrvkm.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/pvrsrvkm.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/scsi_tgt.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/scsi_tgt.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/scsi_wait_scan.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/scsi_wait_scan.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/sec.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/sec.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/vcodec_kernel_driver.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/vcodec_kernel_driver.ko
cp /home/doha/kernel/alps_ww_20130903_for_acer2/kernel/out/simcom89_wet_jb2/system/lib/modules/wlan_mt6628.ko /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/system/lib/modules/wlan_mt6628.ko

#repacking boot
cd /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools
./repack.pl -boot boot.img-kernel.img boot.img-ramdisk /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/boot.img

#creating flashable zip
cd /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha
zip -r out .
mv /home/doha/kernel/alps_ww_20130903_for_acer2/mtktools/doha/out.zip /home/doha/kernel/alps_ww_20130903_for_acer2/kernelV370.zip


