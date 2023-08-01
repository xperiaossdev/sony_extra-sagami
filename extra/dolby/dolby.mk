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

# Dolby Path
DOLBY_FILES := vendor/sony/extra-sagami/extra/dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra-sagami/extra/dolby

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_FILES)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_FILES)/configs/vintf/dms/dolby_framework_matrix.xml
DEVICE_MANIFEST_FILE += \
    $(DOLBY_FILES)/configs/vintf/dms/vendor.dolby.hardware.dms.xml \
    $(DOLBY_FILES)/configs/vintf/c2/vendor.dolby.media.c2@1.0-service.xml

# Enable Dolby DAP
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Dolby Vendor Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.8.5.20_r1 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false

# Codec2 Vendor Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    debug.c2.use_dmabufheaps=1 \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true \
    debug.stagefright.c2inputsurface=-1 \
    debug.stagefright.ccodec=4

# Packages
PRODUCT_PACKAGES += \
    daxService \
    DolbySound

# Configs
PRODUCT_COPY_FILES += \
    $(DOLBY_FILES)/configs/dax/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(DOLBY_FILES)/configs/dax/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DOLBY_FILES)/configs/dax/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_FILES)/configs/dax/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(DOLBY_FILES)/configs/dax/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml 

# Dolby Blobs
PRODUCT_COPY_FILES += \
    $(DOLBY_FILES)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(DOLBY_FILES)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(DOLBY_FILES)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    $(DOLBY_FILES)/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ac4dec.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    $(DOLBY_FILES)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so

# Codec2 Blobs
PRODUCT_COPY_FILES += \
    $(DOLBY_FILES)/c2/system/lib/android.hardware.media.c2@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib/android.hardware.media.c2@1.0.so \
    $(DOLBY_FILES)/c2/system/lib/android.hardware.media.c2@1.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib/android.hardware.media.c2@1.1.so \
    $(DOLBY_FILES)/c2/system/lib/android.hardware.media.c2@1.2.so:$(TARGET_COPY_OUT_SYSTEM)/lib/android.hardware.media.c2@1.2.so \
    $(DOLBY_FILES)/c2/system/lib/libavservices_minijail.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libavservices_minijail.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2_client.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2_client.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2_hidl_client@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2_hidl_client@1.0.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2_hidl_client@1.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2_hidl_client@1.1.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2_hidl_client@1.2.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2_hidl_client@121.so \
    $(DOLBY_FILES)/c2/system/lib/libcodec2_vndk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcodec2_vndk.so \
    $(DOLBY_FILES)/c2/system/lib64/android.hardware.media.c2@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.media.c2@1.0.so \
    $(DOLBY_FILES)/c2/system/lib64/android.hardware.media.c2@1.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.media.c2@1.1.so \
    $(DOLBY_FILES)/c2/system/lib64/android.hardware.media.c2@1.2.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.media.c2@1.2.so \
    $(DOLBY_FILES)/c2/system/lib64/libavservices_minijail.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libavservices_minijail.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2_client.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2_client.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2_hidl_client@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2_hidl_client@1.0.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2_hidl_client@1.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2_hidl_client@1.1.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2_hidl_client@1.2.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2_hidl_client@1.2.so \
    $(DOLBY_FILES)/c2/system/lib64/libcodec2_vndk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcodec2_vndk.so \
    $(DOLBY_FILES)/c2/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(DOLBY_FILES)/c2/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(DOLBY_FILES)/c2/vendor/lib/libavservices_minijail.so:$(TARGET_COPY_OUT_VENDOR)/lib/libavservices_minijail.so \
    $(DOLBY_FILES)/c2/vendor/lib/libcodec2_hidl@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_hidl@1.0.so \
    $(DOLBY_FILES)/c2/vendor/lib/libcodec2_hidl_plugin.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_hidl_plugin.so \
    $(DOLBY_FILES)/c2/vendor/lib/libcodec2_soft_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_common.so \
    $(DOLBY_FILES)/c2/vendor/lib/libcodec2_vndk.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_vndk.so \
    $(DOLBY_FILES)/c2/vendor/lib/libdmabufheap.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdmabufheap.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqc2audio_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_basecodec.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqc2audio_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2audio_core.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqc2colorconvertfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2colorconvertfilter.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2filter.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqc2vppfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqc2vppfilter.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqcodec2_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_core.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqcodec2_filterbase.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_filterbase.so \
    $(DOLBY_FILES)/c2/vendor/lib/libqcodec2_v4l2codec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcodec2_v4l2codec.so \
    $(DOLBY_FILES)/c2/vendor/lib/libsfplugin_ccodec_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsfplugin_ccodec_utils.so \
    $(DOLBY_FILES)/c2/vendor/lib/qti.video.utils.videobufferlayout.so:$(TARGET_COPY_OUT_VENDOR)/lib/qti.video.utils.videobufferlayout.so \
    $(DOLBY_FILES)/c2/vendor/lib64/android.hardware.media.c2@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.media.c2@1.0.so \
    $(DOLBY_FILES)/c2/vendor/lib64/android.hardware.media.c2@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.media.c2@1.1.so \
    $(DOLBY_FILES)/c2/vendor/lib64/android.hardware.media.c2@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.media.c2@1.2.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libavservices_minijail.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libavservices_minijail.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libavservices_minijail_vendor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libavservices_minijail_vendor.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_hidl@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.0.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_hidl@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.1.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_hidl@1.2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl@1.2.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_hidl_plugin.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_hidl_plugin.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_soft_common.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_common.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_soft_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_dolby.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libcodec2_vndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_vndk.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libdmabufheap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdmabufheap.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqc2audio_basecodec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_basecodec.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqc2audio_core.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2audio_core.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqc2colorconvertfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2colorconvertfilter.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqc2filter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2filter.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqc2vppfilter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqc2vppfilter.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqcodec2_core.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_core.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqcodec2_filterbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_filterbase.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libqcodec2_v4l2codec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcodec2_v4l2codec.so \
    $(DOLBY_FILES)/c2/vendor/lib64/libsfplugin_ccodec_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsfplugin_ccodec_utils.so \
    $(DOLBY_FILES)/c2/vendor/lib64/qti.video.utils.videobufferlayout.so:$(TARGET_COPY_OUT_VENDOR)/lib64/qti.video.utils.videobufferlayout.so