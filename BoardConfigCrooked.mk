#
# Copyright (C) 2022 The Crooked Android Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Partitions
AB_OTA_PARTITIONS += \
    vendor

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
