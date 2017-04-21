# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := grandpplte

# Platform
TARGET_BOARD_PLATFORM := mt6735m

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/grandpplte/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/grandpplte/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --cmdline bootopt=64S3,32N2,32N2 --pagesize 2048 --base 0x3fffc000 --kernel_offset 0x00008000 --ramdisk_offset 0x04004000 --tags_offset 0x0e004000 --dt device/samsung/grandpplte/dt.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# TWRP-Specific
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
