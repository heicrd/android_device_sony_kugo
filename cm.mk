# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_loire_kugo_defconfig

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 720x407

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/kugo/device.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kugo
PRODUCT_DEVICE := kugo
PRODUCT_MODEL := F5321
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Kugo Props
TARGET_SYSTEM_PROP += device/sony/kugo/system.prop
