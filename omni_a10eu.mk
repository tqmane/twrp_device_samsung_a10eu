#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a10eu device
$(call inherit-product, device/samsung/a10eu/device.mk)

PRODUCT_DEVICE := a10eu
PRODUCT_NAME := omni_a10eu
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-42A
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a10eudcm-user 11 RP1A.200720.012 SC42AOMU1BVH1 release-keys"

BUILD_FINGERPRINT := samsung/SC-42A/SC-42A:11/RP1A.200720.012/SC42AOMU1BVH1:user/release-keys
