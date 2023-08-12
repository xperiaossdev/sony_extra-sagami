#
# Copyright (C) 2023 The LineageOS Project
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

# 360RA Path
UPMIX_FILES += vendor/sony/extra-sagami/extra/threesixtyra

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra-sagami/extra/threesixtyra

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(UPMIX_FILES)/sepolicy/vendor

# SecComp
PRODUCT_COPY_FILES += \
    $(UPMIX_FILES)/configs/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(UPMIX_FILES)/configs/vintf/c2/threesixtyra_framework_manifest.xml
DEVICE_MANIFEST_FILE += $(UPMIX_FILES)/configs/vintf/c2/vendor.threesixty_ra.codec2.xml

# 360RA Vendor Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.360ra.effect=1 \
    vendor.audio.use.sw.mpegh.decoder=true

# Packages
PRODUCT_PACKAGES += \
    SoundEnhancement \
    ThreeSixtyRASettings \
    ThreeSixtyRASystem

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_PACKAGES += \
    ThreeSixtyRASystem-Overlay

# C2 Media Codec Configs
PRODUCT_COPY_FILES += \
    $(UPMIX_FILES)/configs/c2/media_codecs_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_audio.xml \
    $(UPMIX_FILES)/configs/c2/media_codecs_sony_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sony_c2_audio.xml

# 360RA Configs
PRODUCT_COPY_FILES += \
    $(UPMIX_FILES)/proprietary/vendor/etc/alc.speaker.bin:$(TARGET_COPY_OUT_VENDOR)/etc/alc.speaker.bin \
    $(UPMIX_FILES)/proprietary/vendor/etc/dsx_param_file.bin:$(TARGET_COPY_OUT_VENDOR)/etc/dsx_param_file.bin \
    $(UPMIX_FILES)/proprietary/vendor/etc/HRTF_speaker_coef.hki:$(TARGET_COPY_OUT_VENDOR)/etc/HRTF_speaker_coef.hki \
    $(UPMIX_FILES)/proprietary/vendor/etc/speaker.hki:$(TARGET_COPY_OUT_VENDOR)/etc/speaker.hki \
    $(UPMIX_FILES)/proprietary/vendor/etc/speaker.hki.config:$(TARGET_COPY_OUT_VENDOR)/etc/speaker.hki.config \
    $(UPMIX_FILES)/proprietary/vendor/etc/XTC_speaker_coef.hki:$(TARGET_COPY_OUT_VENDOR)/etc/XTC_speaker_coef.hki

# 360RA Blobs
PRODUCT_COPY_FILES += \
    $(UPMIX_FILES)/proprietary/system_ext/etc/permissions/com.sony.360ra.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.360ra.xml \
    $(UPMIX_FILES)/proprietary/system_ext/etc/permissions/com.sony.threesixtyra.audiofx.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.threesixtyra.audiofx.xml \
    $(UPMIX_FILES)/proprietary/system_ext/etc/permissions/com.sonyericsson.soundenhancement.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonyericsson.soundenhancement.xml \
    $(UPMIX_FILES)/proprietary/system_ext/etc/permissions/jp.co.sony.threesixtyra.system.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/jp.co.sony.threesixtyra.system.xml \
    $(UPMIX_FILES)/proprietary/system_ext/framework/com.sony.threesixtyra.audiofx.jar:$(TARGET_COPY_OUT_SYSTEM_EXT)/framework/com.sony.threesixtyra.audiofx.jar \
    $(UPMIX_FILES)/proprietary/system_ext/lib/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/extractors/libmmparserextractor.so \
    $(UPMIX_FILES)/proprietary/system_ext/lib64/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/extractors/libmmparserextractor.so \
    $(UPMIX_FILES)/proprietary/system_ext/lib/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libavenhancements.so \
    $(UPMIX_FILES)/proprietary/system_ext/lib64/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libavenhancements.so \
    $(UPMIX_FILES)/proprietary/vendor/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service \
    $(UPMIX_FILES)/proprietary/vendor/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc \
    $(UPMIX_FILES)/proprietary/vendor/lib/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrspatializer.so \
    $(UPMIX_FILES)/proprietary/vendor/lib/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrupmix.so \
    $(UPMIX_FILES)/proprietary/vendor/lib64/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrspatializer.so \
    $(UPMIX_FILES)/proprietary/vendor/lib64/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrupmix.so \
    $(UPMIX_FILES)/proprietary/vendor/lib/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mha1dec.so \
    $(UPMIX_FILES)/proprietary/vendor/lib/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mhm1dec.so \
    $(UPMIX_FILES)/proprietary/vendor/lib/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib/libthreesixty_ra_codec2_store.so \
    $(UPMIX_FILES)/proprietary/vendor/lib64/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mha1dec.so \
    $(UPMIX_FILES)/proprietary/vendor/lib64/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mhm1dec.so \
    $(UPMIX_FILES)/proprietary/vendor/lib64/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libthreesixty_ra_codec2_store.so