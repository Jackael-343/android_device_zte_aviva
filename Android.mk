ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),aviva)
include $(call first-makefiles-under,$(call my-dir))
endif
