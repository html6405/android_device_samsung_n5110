# Release name
PRODUCT_RELEASE_NAME := n5110

# Inherit device configuration
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/kona-common/kona-common.mk)
$(call inherit-product, device/samsung/n5110/n5110.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n5110
PRODUCT_NAME := lineage_n5110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N5110
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=konawifixx \
	TARGET_DEVICE=konawifi \
	PRIVATE_BUILD_DESC="konawifixx-user 4.4.2 KOT49H N5110XXDNF1 release-keys"

BUILD_FINGERPRINT := samsung/konawifixx/konawifi:4.4.2/KOT49H/N5110XXDNF1:user/release-keys
