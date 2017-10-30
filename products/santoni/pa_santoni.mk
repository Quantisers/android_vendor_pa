# Copyright (C) 2016-2017 Paranoid Android
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

# Check for target product
ifeq (pa_santoni,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#Set bootanimation to 720p display
TARGET_BOOT_ANIMATION_RES := 720

include device/qcom/common/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/xiaomi/santoni/device.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_santoni
PRODUCT_DEVICE := santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := santoni

PRODUCT_BUILD_PROP_OVERRIDES += \
     TARGET_DEVICE="santoni" \
     PRODUCT_NAME="santoni" \
     BUILD_FINGERPRINT="Xiaomi/santoni/santoni:7.1.2/N2G47H/7.7.6:user/release-keys" \
     PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H 7.7.6 release-keys" \
     DEVICE_MAINTAINERS="Nikesh Kataria"

TARGET_VENDOR := Xiaomi

# Paranoid Android platform
include vendor/pa/main.mk


endif
