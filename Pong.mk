#
# # Copyright (C) 2023 Neoteric OS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit from the Neoteric configuration.
$(call inherit-product, vendor/neoteric/target/product/neoteric-target.mk)

PRODUCT_NAME := Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Pong-user 12 SKQ1.221207.001 2310242214 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Nothing/Pong/Pong:12/SKQ1.221207.001/2310242214:user/release-keys
