PRODUCT_SOONG_NAMESPACES += \
    sony/extra

# SonyFramework
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/product/,$(TARGET_COPY_OUT_SYSTEM)/product/)

# Camera
 PRODUCT_PACKAGES += \
    PhotoPro \
    CinemaPro \
    VideoPro \
    CameraPanorama \
    CreativeEffect \
    PortraitSelfie

### SonyHiRes Start

# Pre-Built Binaries
PRODUCT_PACKAGES += \
   alsacap \
   alsactl \
   alsaucm \
   amixer \
   aplay \
   arecord \
   check \
   cmixer
   
# System Configuration Files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/extra/sonyhires/audio/etc/asound.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/asound.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/alsa.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/alsa.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/cards/aliases.alisp:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/cards/aliases.alisp \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/cards/aliases.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/cards/aliases.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/center_lfe.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/center_lfe.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/default.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/default.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/dmix.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dmix.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/dpl.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dpl.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/dsnoop.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dsnoop.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/front.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/front.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/hdmi.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/hdmi.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/iec958.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/iec958.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/modem.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/modem.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/rear.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/rear.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/side.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/side.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround21.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround21.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround40.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround40.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround41.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround41.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround50.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround50.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround51.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround51.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/usr/share/alsa/pcm/surround71.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround71.conf

# Vendor Configuration Files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio_io_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio_io_policy.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/mixer_paths.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/mixer_paths_cdp.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/mixer_paths_hdk.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/mixer_paths_hdk.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/mixer_paths_hhg.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/mixer_paths_hhg.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/mixer_paths_qrd.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/audio_effects.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/audio_effects.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/audio_io_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/audio_io_policy.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/mixer_paths.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/mixer_paths_cdp.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/mixer_paths_hdk.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/mixer_paths_hdk.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/mixer_paths_hhg.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/mixer_paths_hhg.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina/mixer_paths_qrd.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_lahaina_qssi/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_lahaina_qssi/audio_policy_configuration.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima/audio_effects.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima/audio_effects.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima/audio_io_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima/audio_io_policy.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima/mixer_paths_shimaidp.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima/mixer_paths_shimaidp.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima/mixer_paths_shimaidps.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima/mixer_paths_shimaidps.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima/mixer_paths_shimaqrd.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima/mixer_paths_shimaqrd.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_shima_qssi/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_shima_qssi/audio_policy_configuration.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_yupik/audio_effects.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_yupik/audio_effects.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_yupik/audio_io_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_yupik/audio_io_policy.conf \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_yupik/mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_yupik/mixer_paths_yupikidp.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_yupik/mixer_paths_yupikqrd.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_yupik/mixer_paths_yupikqrd.xml \
   $(LOCAL_PATH)/extra/sonyhires/audio/vendor/etc/audio/sku_yupik_qssi/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio/sku_yupik_qssi/audio_policy_configuration.xml

### SonyHiRes End

# Controller Support
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/keylayout/,$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout)

# Dolby
# PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/extra/dolby/system/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/vendor.dolby.hardware.dms@2.0.so \
#    $(LOCAL_PATH)/extra/dolby/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
#    $(LOCAL_PATH)/extra/dolby/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
#    $(LOCAL_PATH)/extra/dolby/system_ext/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
#    $(LOCAL_PATH)/extra/dolby/system_ext/etc/permissions/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
#    $(LOCAL_PATH)/extra/dolby/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
#    $(LOCAL_PATH)/extra/dolby/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
#    $(LOCAL_PATH)/extra/dolby/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc

# Dolby Props
# PRODUCT_VENDOR_PROPERTIES += \
#    vendor.audio.dolby.ds2.enabled=false \
#    vendor.audio.dolby.ds2.hardbypass=false \
#    ro.vendor.dolby.dax.version=DAX3_3.5.1.28_r1

# Dolby Libs
# PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/dolby/vendor/lib/,$(TARGET_COPY_OUT_VENDOR)/lib) \
#    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/dolby/vendor/lib64/,$(TARGET_COPY_OUT_VENDOR)/lib64) \
#    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/dolby/vendor/bin/hw/,$(TARGET_COPY_OUT_VENDOR)/bin/hw)

# Dolby Configs
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/extra/dolby/configs/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
#    $(LOCAL_PATH)/extra/dolby/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
#    $(LOCAL_PATH)/extra/dolby/configs/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Dolby SEPolicy
# BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_PATH)/extra/dolby/sepolicy/vendor

# HIDL
# DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_PATH)/extra/dolby/configs/dolby_framework_matrix.xml
# DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/extra/dolby/configs/vendor.dolby.hardware.dms.xml

# Enable Codec Support (For Dolby)
# AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Dolby Atmos PKGs
# PRODUCT_PACKAGES += \
#  daxUI \
#  daxService