LOCAL_PATH := device/samsung/grandpplte

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := grandpplte
