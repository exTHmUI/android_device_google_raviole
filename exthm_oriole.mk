#
# Copyright (C) 2019-2023 The exTHmUI Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Inherit some common exTHmUI stuff.
$(call inherit-product, vendor/exthm/config/phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/exthm_common.mk)
$(call inherit-product, device/google/raviole/device-exthm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := exthm_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.221205.011/9244662:user/release-keys
