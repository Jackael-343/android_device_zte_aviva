# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB:= true
#BOARD_USE_FROYO_LIBCAMERA := true
COPYBIT_MSM7K := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_ARCH_VARIANT_FPU := vfpv3

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
# Removed -mtune=cortex-a5

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := aviva
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

# assert
TARGET_OTA_ASSERT_DEVICE := aviva,Z992

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
#BOARD_CUSTOM_BLUEDROID := ../../../device/zte/aviva/bluedroid/bluetooth.c
BOARD_FORCE_STATIC_A2DP := true
HAS_BCM20780 := true
BOARD_GLOBAL_CFLAGS += -DHAS_BCM20780

BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := ar6000

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BOARD_USE_SCREENCAP:= true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/zte/aviva/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api
BOARD_GPS_NEEDS_XTRA := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := aviva
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_NAND_PAGE_SIZE := 4096
BOARD_PAGE_SIZE := 0x00001000
#BOARD_FORCE_RAMDISK_ADDRESS := 0X01500000

TARGET_PROVIDES_LIBAUDIO := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
#BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

#BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/aviva/UsbController.cpp

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true 

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16384000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16384000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 614400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 238796800
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/aviva/kernel
TARGET_RECOVERY_INITRC := device/zte/aviva/recovery/recovery.rc
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_LDPI_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA8888"

# AreaROM Recovery call
#BOARD_AREAROM_RECOVERY := false
#BOARD_VIP_RECOVERY := true

#BOARD_CWM_RECOVERY := false

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/aviva/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/zte/aviva/recovery/graphics.c

# TWRP
DEVICE_RESOLUTION := 320x480
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
