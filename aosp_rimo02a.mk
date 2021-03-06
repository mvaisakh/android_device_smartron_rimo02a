#
# Copyright (C) 2017 The LineageOS Project
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
#

$(call inherit-product, device/smartron/rimo02a/full_rimo02a.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Define some common stuff.
TARGET_GAPPS_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aosp_rimo02a
BOARD_VENDOR := smartron
PRODUCT_DEVICE := rimo02a
TARGET_VENDOR_PRODUCT_NAME := srtphone
TARGET_VENDOR_DEVICE_NAME := rimo02a
TARGET_DEVICE=rimo02a
#PRODUCT_NAME=srtphone

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-smartron

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Smartron/srtphone/rimo02a:8.0.0/T5524INDURC-475/475:user/release-keys"
    PRIVATE_BUILD_DESC="rimo02a 8.0.0 T5524INDURC-475 release-keys"
