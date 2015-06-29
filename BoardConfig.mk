# Assert
TARGET_OTA_ASSERT_DEVICE := logan2g

# Camera
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/logan2g/BoardConfigVendor.mk

# Architecture, Board
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_BOARD_PLATFORM := sc6820i
TARGET_BOARD_PLATFORM_GPU := mali400
TARGET_BOOTLOADER_BOARD_NAME := logan
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ifeq ($(TARGET_ARCH_VARIANT_CPU), cortex-a5)
ARCH_ARM_HAVE_NEON_UNALIGNED_ACCESS := true
ARCH_ARM_NEON_MEMSET_DIVIDER := 132
ARCH_ARM_NEON_MEMCPY_ALIGNMENT_DIVIDER := 224
endif
ARCH_ARM_HAVE_VFP_D32 := false

# For low memory targets only (~512MB RAM & hdpi resolution)
TARGET_ARCH_LOWMEM := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/logan2g
TARGET_KERNEL_CONFIG := cyanogenmod-logan2g_defconfig
BOARD_USES_UNCOMPRESSED_BOOT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 941621248
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2630614016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_VENDOR_USE_AKMD := true

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p8
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p9
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p12
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/logan2g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/logan2g/recovery.fstab
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/logan2g/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_ALWAYS_WIPES := true
BOARD_RECOVERY_HANDLES_MOUNT := true
RECOVERY_EXTEND_NANDROID_MENU := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HDPI_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# TWRP Specific
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
# DEVICE_RESOLUTION := 480x800
# TW_NO_SCREEN_TIMEOUT := true
# BOARD_HAS_NO_REAL_SDCARD := true
# RECOVERY_SDCARD_ON_DATA := true
# TW_INTERNAL_STORAGE_PATH := "/sdcard"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
# TW_EXTERNAL_STORAGE_PATH := "/storage/extSdCard"
# TW_EXTERNAL_STORAGE_MOUNT_POINT := "/storage/extSdCard"
# TW_NO_USB_STORAGE := true
# TW_DEFAULT_EXTERNAL_STORAGE := true
# TW_HAS_DOWNLOAD_MODE := true
# TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"

# Build OpenGLES emulation guest and host libraries
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true

# Hardware Rendering
USE_OPENGL_RENDERER := true
HWUI_COMPILE_FOR_PERF := true
BOARD_EGL_CFG := device/samsung/logan2g/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_USE_LEGACY_UI := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DSC6820I_HWC -DBOARD_EGL_NEEDS_LEGACY_FB -DMR0_CAMERA_BLOB -DMR0_AUDIO_BLOB -DSAMSUNG_BCM_AUDIO_BLOB

# Audio
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/logan2g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/logan2g/bluetooth/libbt_vndcfg.txt

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Connectivity - Wi-Fi
WPA_BUILD_SUPPLICANT        := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_NO_APSME_ATTR := true

# Ril
# BOARD_PROVIDES_LIBRIL := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"
BOARD_RIL_CLASS := ../../../device/samsung/logan2g/ril/

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Bootanimation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Font Footprint
SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true

# Enable dex-preoptimization to speed up the first boot sequence of an SDK AVD.
# Note that this operation only works on Linux for now.
ifeq ($(HOST_OS),linux)
WITH_DEXPREOPT := true
endif
