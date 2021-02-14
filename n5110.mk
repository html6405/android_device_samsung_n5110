#
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
#

$(call inherit-product, device/samsung/kona-common/kona-common.mk)

LOCAL_PATH := device/samsung/n5110

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=wlan0 \
    ro.radio.noril=yes

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.target.usb.rc:root/init.target.usb.rc

# Include common makefile
$(call inherit-product, vendor/samsung/n5110/n5110-vendor.mk)
$(call inherit-product, device/samsung/kona-common/kona-common.mk)

$(call inherit-product-if-exists, vendor/samsung/n5110/n5110-vendor-blobs.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk