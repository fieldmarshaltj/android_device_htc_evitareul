# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := tegra

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_evitareul_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/evitareul

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/htc/evitareul/configs/egl.cfg

# No EGL_KHR_gl_colorspace
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Filesystem (cat /proc/emmc)
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 60129542144
BOARD_FLASH_BLOCK_SIZE := 131072

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# TWRP
DEVICE_RESOLUTION := 720x1280
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
# TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# TW_INCLUDE_JB_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
# TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_DEVICE_MODULES := chargeled
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_MTP := true
TW_DISABLE_TTF := true
# inherit from the proprietary version
-include vendor/htc/evitareul/BoardConfigVendor.mk
