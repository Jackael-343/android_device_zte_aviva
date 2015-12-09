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

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    DYNAMIC_SHARED_LIBV8SO := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USES_QCNE := true
    USE_OPENGL_RENDERER := true
    TARGET_USES_MDP3 := true
    #BOARD_USE_QCOM_LLVM_CLANG_RS := true
    MM_AUDIO_OMX_ADEC_EVRC_DISABLED := true
    MM_AUDIO_OMX_ADEC_QCELP13_DISABLED := true
    MM_AUDIO_FTM_DISABLED := true
    MM_AUDIO_MEASUREMENT_DISABLED := true
    MM_AUDIO_VOEM_DISABLED := true
    MM_AUDIO_MVS_DISABLED :=true
    TARGET_NO_RPC := false
    TARGET_USES_ION := true
    ifneq ($(BUILD_TINY_ANDROID), true)
   #BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
   #BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAVE_QCOM_FM := true
    PROTEUS_DEVICE_API := true
    #HACK use Camera Stub
    BOARD_CAMERA_LIBRARIES := libcamera
    # Define respective statement to true to enable the ATH or WCN WLAN.
    BOARD_HAS_QCOM_WLAN := true
    BOARD_HAS_ATH_WLAN := false

    ifeq ($(findstring true,$(BOARD_HAS_ATH_WLAN) $(BOARD_HAS_QCOM_WLAN)),true)
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    BOARD_HOSTAPD_DRIVER := NL80211
    WPA_SUPPLICANT_VERSION := VER_0_8_X
    HOSTAPD_VERSION := VER_0_8_X
    WIFI_CFG80211_DRIVER_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
    WIFI_CFG80211_DRIVER_MODULE_NAME := "cfg80211"
    WIFI_CFG80211_DRIVER_MODULE_ARG  := ""
    WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
    WIFI_DRIVER_MODULE_NAME := "wlan"
    WIFI_DRIVER_MODULE_ARG := ""

    WIFI_TEST_INTERFACE     := "sta"
    WIFI_DRIVER_FW_PATH_STA := "sta"
    WIFI_DRIVER_FW_PATH_AP  := "ap"
    WIFI_DRIVER_FW_PATH_P2P := "p2p"
    endif

    ifeq ($(BOARD_HAS_QCOM_WLAN), true)
    WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
    WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
    BOARD_WLAN_DEVICE := qcwcn
    endif

    BOARD_USES_SRS_TRUEMEDIA := true
    endif   # !BUILD_TINY_ANDROID

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true
endif # QC_PROP

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB:= true
#BOARD_USE_FROYO_LIBCAMERA := true
COPYBIT_MSM7627a := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7627a
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

# assert
TARGET_OTA_ASSERT_DEVICE := aviva,Avail,Z992,z992,ZTE-992,ZTE-Avail,ATT-Avail

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
#TARGET_USE_SOFTWARE_AUDIO_AAC := true

BOARD_HAVE_BLUETOOTH := true
TARGET_GLOBAL_CFLAGS += DWITH_A2DP
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
#BOARD_CUSTOM_BLUEDROID := ../../../device/ZTE/aviva/bluedroid/bluetooth.c
BOARD_FORCE_STATIC_A2DP := true
HAS_BCM20780 := true
BOARD_GLOBAL_CFLAGS += -DHAS_BCM20780

BOARD_FM_DEVICE := bcm2049

BOARD_USES_SRS_TRUEMEDIA := TRUE
TARGET_GLOBAL_CFLAGS += -DSTS_PROCESSING

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
BOARD_EGL_CFG := device/ZTE/aviva/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api
BOARD_GPS_NEEDS_XTRA := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := aviva
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_NAND_PAGE_SIZE := 4096
BOARD_PAGE_SIZE := 4096

TARGET_PROVIDES_LIBAUDIO := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
#BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

#BOARD_CUSTOM_USB_CONTROLLER := ../../device/ZTE/aviva/UsbController.cpp

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true 

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2445279232
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_RECOVERY_KERNEL := device/ZTE/aviva/kernel
TARGET_RECOVERY_INITRC := device/ZTE/aviva/recovery/recoverynew.rc
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

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/ZTE/aviva/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/ZTE/aviva/recovery/graphics.c
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := /home/razor/qcom/system/external/bluetooth/bluez

# TWRP
DEVICE_RESOLUTION := 320x480
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

#NEWLY ADDED SYSTEM PROP FILES FOR OPTIMIZATION 

#CM STUFF
CM_VERSION := CYANOGENMOD_10.1-ZTE_AVIVA
#TARGET_BUILD_APPS := default

#KERNEL CONFIG 
#TARGET_PREBUILT_KERNEL := device/ZTE/aviva/kernel
TARGET_KERNEL_CONFIG := msm7627a-aviva_defconfig
KERNEL_LOCAL_VERSION := zte-kernel@razor-CM10

#NO BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := 
#TARGET_BUILD_APPS := default

#TARGETS
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
#TARGET_USES_UNCOMPRESSED_KERNEL := false
TARGET_ARCH_LOWMEM := true

#BOARD
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0X01300000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0X00008000

BOARD_NO_SPEAKER := true # msm7627a doesn't have speaker

#QCOM
TARGET_QCOM_HDMI_OUT := false
#BOARD_USES_QCOM_HARDWARE := true
ARCH_ARM_HAVE_TLS_REGISTER := true
COMMON_GLOBAL_CFLAGS += -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true
#BOARD_HAVE_QCOM_FM := true
#BOARD_GLOBAL_CFLAGS += -DWITH_QCOM_FM\
#BOARD_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_PMEM := true
LOCAL_LDLIBS := -llog

#Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

#QCOM ENHANCEMENTS
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
#TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
TARGET_GRALLOC_USES_ASHMEM := true

# Low RAM settings
MALLOC_IMPL := dlmalloc
TARGET_BOOTANIMATION_TEXTURE_CACHE := false

#AUDIO
#BOARD_USES_LEGACY_ALSA_AUDIO := true
MM_AUDIO_OMX_ADEC_EVRC_DISABLED := true
MM_AUDIO_OMX_ADEC_QCELP13_DISABLED := true
MM_AUDIO_FTM_DISABLED := true
MM_AUDIO_MEASUREMENT_DISABLED := true
MM_AUDIO_VOEM_DISABLED := true
MM_AUDIO_MVS_DISABLED :=true
#GRAPHICS
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
USE_OPENGL_RENDERER := true










