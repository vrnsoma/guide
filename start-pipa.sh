git clone https://github.com/DD3Boh/android_device_xiaomi_pipa device/xiaomi/pipa -b lineage-20-7
git clone https://github.com/DD3Boh/android_device_xiaomi_sm8250-common device/xiaomi/sm8250-common -b lineage-21
git clone https://github.com/luka177/android_vendor_xiaomi_pipa vendor/xiaomi/pipa
git clone https://github.com/DD3Boh/proprietary_vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common
git clone https://github.com/DD3Boh/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250 -b staging/lineage-21-2
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi
git -C bootable/recovery remote add source https://github.com/luka177/android_bootable_recovery
git -C bootable/recovery remote update
git -C bootable/recovery cherry-pick 502f28c
. build/envsetup.sh
lunch lineage_pipa-userdebug
mka bacon -j$(nproc --all)
