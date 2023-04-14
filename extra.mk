# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra-sagami

# SonyFramework
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/product/,$(TARGET_COPY_OUT_PRODUCT)/)

# Camera
 PRODUCT_PACKAGES += \
    PhotoPro \
    CinemaPro \
    VideoPro \
    CameraPanorama \
    CreativeEffect \
    PortraitSelfie

# 360 Reality Audio Lite
 PRODUCT_PACKAGES += \
    360RealityAudioLite

# Controller Support
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/keylayout/,$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout)