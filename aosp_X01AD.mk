#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X01AD device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Evolution X specifics
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifiers.
PRODUCT_NAME := evolution_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01AD

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=X01A_1 \
    PRODUCT_NAME=X01A_1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SP2A.220305.012 8177914 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys"
