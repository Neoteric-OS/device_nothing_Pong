#
# Copyright (C) 2023 Neoteric OS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit from the Neoteric configuration.
$(call inherit-product, vendor/neoteric/target/product/neoteric-target.mk)

PRODUCT_NAME := Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

# Declare updates support
IS_OFFICIAL := true

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Pong \
    SystemDevice=Pong \
    SystemName=Pong

PRODUCT_GMS_CLIENTID_BASE := android-nothing
