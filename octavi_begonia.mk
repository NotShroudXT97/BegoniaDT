#
# Copyright (C) 2023 OctaviOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := begonia

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from begonia device
$(call inherit-product, device/redmi/begonia/device.mk)

<<<<<<< HEAD:octavi_begonia.mk
# Inherit some common OctaviOS Stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
TARGET_ENABLE_BLUR := true
TARGET_USE_PIXEL_FINGERPRINT := true
USE_PIXEL_CHARGER := true
USE_LEGACY_BOOTANIMATION := true
WITH_GAPPS := true
OCTAVI_MAINTAINER := NotShroudX97
=======
# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
>>>>>>> d715c43 (begonia: Remove dead/unused product flags):lineage_begonia.mk

# Inherit some extras stuff
$(call inherit-product-if-exists, vendor/extras/extras.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := octavi_begonia
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/begonia/begonia:11/RP1A.200720.011/V12.5.5.0.RGGMIXM:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
