#
# SPDX-License-Identifier: BSD-3-Clause
# Copyright (C) 2022 The Crooked Android Project
#

# Inherit some common stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/device-crooked.mk)
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_blueline
PRODUCT_DEVICE := blueline
PRODUCT_MODEL := Pixel 3
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C2/8618562:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
