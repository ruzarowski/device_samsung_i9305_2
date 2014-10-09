# Copyright (C) 2014 Slim Rom Project
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Slim GSM telephony parts
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9305/full_i9305.mk)

# Release name
PRODUCT_RELEASE_NAME := i9305

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Discard inherited values and use our own instead.
PRODUCT_NAME := slim_i9305
PRODUCT_DEVICE := i9305
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9305

# SaberMod
TARGET_GCC_VERSION_EXP := 4.9
TARGET_USE_O3 := false
STRICT_ALIASING := true
SUPPRES_UNUSED_WARNING := true
OPT_MEMORY := false
BOOT_ZIP_OUT_FILE := SlimKernel-$(TARGET_DEVICE)-$(PLATFORM_VERSION)-$(shell date +"%Y%m%d%H%M%S")
RECOVERY_ZIP_OUT_FILE := SlimRecovery-$(TARGET_DEVICE)-$(shell date +"%Y%m%d%H%M%S")
BOARD_USE_BGRA_8888 := true

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.1.2/JZO54K/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.1.2 JZO54K I9305XXBMA6 release-keys"

$(call inherit-product-if-exists, kernel/samsung/smdk4412/boeffla.mk)
