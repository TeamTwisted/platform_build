# Copyright (C) 2014-2015 The SaberMod Project
# Copyright (c) 2015 Benzo Rom
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
# Written for SaberMod toolchains

# Bluetooth
LOCAL_BLUETOOTH_BLUEDROID := \
  bluetooth.default \
  libbt-brcm_stack \
  audio.a2dp.default \
  libbt-brcm_gki \
  libbt-utils \
  libbt-qcom_sbc_decoder \
  libbt-brcm_bta \
  bdt \
  bdtest \
  libbt-hci \
  libosi \
  ositests \
  libbt-vendor \
  libbluetooth_jni

# ENABLE_ARM_MODE
ifeq ($(strip $(ENABLE_ARM_MODE)),true)
LOCAL_ARM_COMPILERS_WHITELIST_BASE := \
  libmincrypt \
  libc++abi \
  libjni_latinime_common_static \
  libcompiler_rt \
  libnativebridge \
  libc++ \
  libRSSupport \
  netd \
  libscrypt_static \
  libRSCpuRef \
  libRSDriver \
  liblog \
  logcat \
  logd \
  $(LOCAL_BLUETOOTH_BLUEDROID)

 ifndef LOCAL_ARM_COMPILERS_WHITELIST
 LOCAL_ARM_COMPILERS_WHITELIST := \
   $(LOCAL_ARM_COMPILERS_WHITELIST_BASE)
 else
 LOCAL_ARM_COMPILERS_WHITELIST += \
   $(LOCAL_ARM_COMPILERS_WHITELIST_BASE)
 endif

 ifeq ($(strip $(TARGET_ARCH)),arm)
  ifeq ($(strip $(ENABLE_ARM_MODE)),true)
    ifneq ($(strip $(LOCAL_IS_HOST_MODULE)),true)
      ifneq (1,$(words $(filter libLLVM% $(LOCAL_ARM_COMPILERS_WHITELIST),$(LOCAL_MODULE))))
        ifneq ($(filter arm thumb,$(LOCAL_ARM_MODE)),)
          LOCAL_TMP_ARM_MODE := $(filter arm thumb,$(LOCAL_ARM_MODE))
          LOCAL_ARM_MODE := $(LOCAL_TMP_ARM_MODE)
          ifeq ($(strip $(LOCAL_ARM_MODE)),arm)
            ifdef LOCAL_CFLAGS
              LOCAL_CFLAGS += -marm
            else
              LOCAL_CFLAGS := -marm
            endif
            ifeq ($(strip $(LOCAL_CLANG)),true)
              LOCAL_CLANG := false
            endif
          endif
          ifeq ($(strip $(LOCAL_ARM_MODE)),thumb)
            ifdef LOCAL_CFLAGS
              LOCAL_CFLAGS += -mthumb-interwork
            else
              LOCAL_CFLAGS := -mthumb-interwork
            endif
          endif
        else
          LOCAL_ARM_MODE := arm
          ifdef LOCAL_CFLAGS
           LOCAL_CFLAGS += -marm
          else
            LOCAL_CFLAGS := -marm
          endif
        endif
        ifeq ($(strip $(LOCAL_CLANG)),true)
            LOCAL_CLANG := false
        endif
      else
        ifndef LOCAL_ARM_MODE
          LOCAL_ARM_MODE := thumb
        endif
        ifeq ($(strip $(LOCAL_ARM_MODE)),arm)
          ifdef LOCAL_CFLAGS
          LOCAL_CFLAGS += -marm
          else
           LOCAL_CFLAGS := -marm
          endif
        endif
        ifeq ($(strip $(LOCAL_ARM_MODE)),thumb)
          ifdef LOCAL_CFLAGS
           LOCAL_CFLAGS += -mthumb-interwork
          else
           LOCAL_CFLAGS := -mthumb-interwork
          endif
        endif
      endif
    endif
  endif
 endif
endif



# TARGET_USE_PIPE
ifeq ($(TARGET_USE_PIPE),true)
LOCAL_DISABLE_PIPE := \
	libc_dns \
	libc_tzcode \
	bluetooth.default

 ifeq ($(filter $(LOCAL_DISABLE_PIPE), $(LOCAL_MODULE)),)
  ifdef LOCAL_CONLYFLAGS
  LOCAL_CONLYFLAGS += \
        -pipe
  else
  LOCAL_CONLYFLAGS := \
        -pipe
  endif
  ifdef LOCAL_CPPFLAGS
  LOCAL_CPPFLAGS += \
	-pipe
  else
  LOCAL_CPPFLAGS := \
	-pipe
  endif
 endif
endif



# STRICT_ALIASING
ifeq ($(STRICT_ALIASING),true)
LOCAL_DISABLE_STRICT := \
    third_party_libyuv_libyuv_gyp \
    third_party_WebKit_Source_wtf_wtf_gyp \
    ipc_ipc_gyp \
    third_party_webrtc_base_rtc_base_gyp \
    courgette_courgette_lib_gyp \
    third_party_WebKit_Source_platform_blink_common_gyp \
    cc_cc_surfaces_gyp \
    net_http_server_gyp \
    base_base_gyp \
    ui_gfx_gfx_gyp \
    android_webview_native_webview_native_gyp \
    jingle_jingle_glue_gyp \
    ui_native_theme_native_theme_gyp \
    third_party_WebKit_Source_core_webcore_dom_gyp \
    third_party_WebKit_Source_core_webcore_html_gyp \
    third_party_WebKit_Source_core_webcore_rendering_gyp \
    third_party_WebKit_Source_core_webcore_svg_gyp \
    components_autofill_content_browser_gyp \
    ui_surface_surface_gyp \
    printing_printing_gyp \
    third_party_WebKit_Source_web_blink_web_gyp \
    third_party_webrtc_modules_media_file_gyp \
    cc_cc_gyp \
    storage_storage_gyp \
    android_webview_android_webview_common_gyp \
    content_content_browser_gyp \
    content_content_common_gyp \
    content_content_child_gyp \
    third_party_webrtc_modules_webrtc_utility_gyp \
    third_party_webrtc_modules_iLBC_gyp \
    third_party_webrtc_modules_neteq_gyp \
    third_party_webrtc_modules_audio_device_gyp\
    third_party_webrtc_modules_rtp_rtcp_gyp \
    components_data_reduction_proxy_browser_gyp \
    libunwind \
    libc_bionic \
    libc_malloc \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.exfat \
    fsck.exfat \
    mount.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    libc_dns \
    libc_tzcode \
    libtwrpmtp \
    libfusetwrp \
    libguitwrp \
    busybox \
    toolbox \
    clatd \
    ip \
    libuclibcrpc \
    libpdfiumcore \
    libandroid_runtime \
    libmedia \
    libpdfiumcore \
    libpdfium \
    bluetooth.default \
    logd \
    mdnsd \
    libfuse \
    libcutils \
    liblog \
    healthd \
    adbd \
    libunwind \
    libsync \
    libnetd_client \
    libnetutils \
    libusbhost \
    libfs_mgr \
    libvold \
    net_net_gyp \
    libstagefright_webm \
    libaudioflinger \
    libmediaplayerservice \
    libstagefright \
    libstagefright_avcenc \
    libstagefright_avc_common \
    libstagefright_httplive \
    libstagefright_rtsp \
    sdcard \
    ping \
    libnetlink \
    ping6 \
    libfdlibm \
    libvariablespeed \
    librtp_jni \
    libwilhelm \
    debuggerd \
    libbt-brcm_bta \
    libbt-brcm_stack \
    libdownmix \
    libldnhncr \
    libqcomvisualizer \
    libvisualizer \
    libutils \
    libandroidfw \
    dnsmasq \
    static_busybox \
    libstagefright_foundation \
    content_content_renderer_gyp \
    third_party_WebKit_Source_modules_modules_gyp \
    third_party_WebKit_Source_platform_blink_platform_gyp \
    third_party_WebKit_Source_core_webcore_remaining_gyp \
    third_party_angle_src_translator_lib_gyp \
    third_party_WebKit_Source_core_webcore_generated_gyp \
    libc_gdtoa \
    libc_openbsd \
    libc \
    libc_nomalloc \
    patchoat \
    dex2oat \
    libart \
    libart-compiler \
    oatdump \
    libart-disassembler \
    mm-vdec-omx-test \
    libssl \
    libziparchive-host \
    libziparchive \
    libdiskconfig \
    libcrypto \
    libbccSupport \
    libbccCore \
    libbccExecutionEngine \
    libbccRenderscript \
    libbcinfo \
    libRS \
    tcpdump \
    bcc \
    logd \
    linker \
    libjavacore \
    camera.msm8084 \
    libmmcamera_interface \
    camera.hammerhead \
    mdnsd \
    libvterm

 ifneq ($(filter $(LOCAL_DISABLE_STRICT),$(LOCAL_MODULE)),)
  ifdef LOCAL_CONLYFLAGS
  LOCAL_CONLYFLAGS += -fno-strict-aliasing
  else
  LOCAL_CONLYFLAGS := -fno-strict-aliasing
  endif
  ifdef LOCAL_CPPFLAGS
  LOCAL_CPPFLAGS += -fno-strict-aliasing
  else
  LOCAL_CPPFLAGS := -fno-strict-aliasing
  endif
  else
  ifdef LOCAL_CONLYFLAGS
  LOCAL_CONLYFLAGS += -fstrict-aliasing -Werror=strict-aliasing
  else
  LOCAL_CONLYFLAGS := -fstrict-aliasing -Werror=strict-aliasing
  endif
  ifdef LOCAL_CPPFLAGS
  LOCAL_CPPFLAGS += -fstrict-aliasing -Werror=strict-aliasing
  else
  LOCAL_CPPFLAGS := -fstrict-aliasing -Werror=strict-aliasing
  endif
  ifndef LOCAL_CLANG
  LOCAL_CONLYFLAGS += -Wstrict-aliasing=3
  LOCAL_CPPFLAGS += -Wstrict-aliasing=3
  else
  LOCAL_CONLYFLAGS += -Wstrict-aliasing=2
  LOCAL_CPPFLAGS += -Wstrict-aliasing=2
  endif
 endif
endif



# KRAIT_TUNINGS
ifeq ($(KRAIT_TUNINGS),true)
 ifndef LOCAL_IS_HOST_MODULE
 LOCAL_DISABLE_KRAIT := \
    $(LOCAL_BLUETOOTH_BLUEDROID) \
	libc_dns \
	libc_tzcode \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
    liblog \
    logcat \
    logd

  ifeq ($(filter $(LOCAL_DISABLE_KRAIT), $(LOCAL_MODULE)),)
   ifdef LOCAL_CONLYFLAGS
   LOCAL_CONLYFLAGS += -mcpu=cortex-a15 -mtune=cortex-a15
   else
   LOCAL_CONLYFLAGS := -mcpu=cortex-a15 -mtune=cortex-a15
   endif
   ifdef LOCAL_CPPFLAGS
   LOCAL_CPPFLAGS += -mcpu=cortex-a15 -mtune=cortex-a15
   else
   LOCAL_CPPFLAGS := -mcpu=cortex-a15 -mtune=cortex-a15
   endif
  endif
 endif
endif



# ENABLE_PTHREAD
ifeq ($(ENABLE_PTHREAD),true)
LOCAL_DISABLE_PTHREAD := \
    $(LOCAL_BLUETOOTH_BLUEDROID) \
    camera.msm8084 \
    libc_netbsd \
    liblog \
    logcat \
    logd

 ifeq ($(filter $(LOCAL_DISABLE_PTHREAD), $(LOCAL_MODULE)),)
  ifdef LOCAL_CONLYFLAGS
  LOCAL_CONLYFLAGS += -pthread
  else
  LOCAL_CONLYFLAGS := -pthread
  endif
  ifdef LOCAL_CPPFLAGS
  LOCAL_CPPFLAGS += -pthread
  else
  LOCAL_CPPFLAGS := -pthread
  endif
 endif
endif



# ENABLE_SANITIZE
ifeq ($(ENABLE_SANITIZE),true)
 ifneq ($(filter arm arm64,$(TARGET_ARCH)),)
  ifneq ($(strip $(LOCAL_IS_HOST_MODULE)),true)
   ifneq ($(strip $(LOCAL_CLANG)),true)
    ifdef LOCAL_CONLYFLAGS
    LOCAL_CONLYFLAGS += -fsanitize=leak
    else
    LOCAL_CONLYFLAGS := -fsanitize=leak
    endif
    ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += -fsanitize=leak
    else
    LOCAL_CPPFLAGS := -fsanitize=leak
    endif
   endif
  endif
 endif
endif



# ENABLE_GOMP
ifeq ($(ENABLE_GOMP),true)
LOCAL_DISABLE_GOMP := \
    $(LOCAL_BLUETOOTH_BLUEDROID) \
    camera.msm8084 \
    libc_netbsd \
    liblog \
    logcat \
    logd

 ifneq ($(filter arm arm64,$(TARGET_ARCH)),)
  ifneq ($(strip $(LOCAL_IS_HOST_MODULE)),true)
   ifneq ($(strip $(LOCAL_CLANG)),true)
    ifeq ($(filter $(LOCAL_DISABLE_GOMP), $(LOCAL_MODULE)),)
     ifdef LOCAL_CONLYFLAGS
     LOCAL_CONLYFLAGS += -fopenmp
     else
     LOCAL_CONLYFLAGS := -fopenmp
     endif
     ifdef LOCAL_CPPFLAGS
     LOCAL_CPPFLAGS += -fopenmp
     else
     LOCAL_CPPFLAGS := -fopenmp
     endif
    endif
   endif
  endif
 endif
endif




# ENABLE_GCCONLY
ifeq ($(ENABLE_GCCONLY),true)
 ifndef LOCAL_IS_HOST_MODULE
  ifeq ($(LOCAL_CLANG),)
  LOCAL_DISABLE_GCCONLY := \
    $(LOCAL_BLUETOOTH_BLUEDROID) \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
    liblog \
    logcat \
    logd

    ifeq ($(filter $(LOCAL_DISABLE_GCCONLY), $(LOCAL_MODULE)),)
    ifdef LOCAL_CONLYFLAGS
    LOCAL_CONLYFLAGS += \
    -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
    else
    LOCAL_CONLYFLAGS := \
    -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
    endif
    ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += \
    -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
    else
    LOCAL_CPPFLAGS := \
    -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
    endif
   endif
  endif
 endif
endif



# FLOOP_NEST_OPTIMIZE 
ifeq ($(FLOOP_NEST_OPTIMIZE),true)
LOCAL_ENABLE_NEST := \
    art \
    libsigchain \
    libart \
    libart-compiler \
    libartd \
    libartd-compiler \
    libart-disassembler \
    libartd-disassembler \
    core.art-host \
    core.art \
    cpplint-art-phony \
    libnativebridgetest \
    libarttest \
    art-run-tests \
    libart-gtest \
    libc \
    libc_bionic \
    libc_gdtoa \
    libc_netbsd \
    libc_freebsd \
    libc_dns \
    libc_openbsd \
    libc_cxa \
    libc_syscalls \
    libc_aeabi \
    libc_common \
    libc_nomalloc \
    libc_malloc \
    libc_stack_protector \
    libc_tzcode \
    libstdc++ \
    linker \
    libdl \
    libm \
    tzdata \
    bionic-benchmarks

 ifneq ($(filter $(LOCAL_ENABLE_NEST), $(LOCAL_MODULE)),)
  ifndef LOCAL_IS_HOST_MODULE
   ifeq ($(LOCAL_CLANG),)
    ifdef LOCAL_CONLYFLAGS
    LOCAL_CONLYFLAGS += -floop-nest-optimize
    else
    LOCAL_CONLYFLAGS := -floop-nest-optimize
    endif
    ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += -floop-nest-optimize
    else
    LOCAL_CPPFLAGS := -floop-nest-optimize
    endif
   endif
  endif
 endif
endif



# GRAPHITE_OPTS
ifeq ($(GRAPHITE_OPTS),true)
 ifndef LOCAL_IS_HOST_MODULE
  ifeq ($(LOCAL_CLANG),)
  LOCAL_DISABLE_GRAPHITE := \
    $(LOCAL_BLUETOOTH_BLUEDROID) \
    libhwui \
    libandroid_runtime \
    libsigchain \
	libunwind \
	libFFTEm \
	libicui18n \
	libskia \
	libvpx \
	libmedia_jni \
	libstagefright_mp3dec \
	libstagefright_amrwbenc \
	libpdfium \
	libpdfiumcore \
    libunwind \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	libjni_filtershow_filters \
	fio \
	libwebrtc_spl \
	libpcap \
	libFraunhoferAAC \
    libwebrtc_apm_utility \
    liblog \
    logcat \
    logd \
    libncurses \
    mdnsd \
    libft2 \
libminzip \
init \
libstlport \
libnetutils \
libandroidfw \
libwebp-decode \
libwebp-encode \
libxml2 \
dhcpcd \
clatd \
audio.r_submix.default \
libstagefright_m4vh263dec \
libstagefright_m4vh263enc \
libwebrtc_aec \
busybox \
updater \
libwebrtc_apm

   ifeq ($(filter $(LOCAL_DISABLE_GRAPHITE), $(LOCAL_MODULE)),)
    ifdef LOCAL_CONLYFLAGS
    LOCAL_CONLYFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
    else
    LOCAL_CONLYFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
    endif
    ifdef LOCAL_CPPFLAGS
    LOCAL_CPPFLAGS += \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
    else
    LOCAL_CPPFLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
    endif
   endif
  endif
 endif
endif



# FORCE FFAST-MATH
ifeq ($(FFAST_MATH),true)
LOCAL_FORCE_FFAST_MATH := \
    libskia \
    libGLESv2 \
    libEGL \
    libGLESv1_CM \
    libGLES_android \
    skia_skia_gyp \
    skia_skia_library_gyp \
    libui \
    libgui \
    libhwui \
    third_party_WebKit_Source_core_webcore_rendering_gyp \
    third_party_WebKit_Source_core_webcore_svg_gyp \
    third_party_WebKit_Source_core_webcore_generated_gyp \
    third_party_WebKit_Source_core_webcore_html_gyp \
    third_party_WebKit_Source_core_webcore_remaining_gy \
    third_party_WebKit_Source_web_blink_web_gyp \
    libfilterfw_jni \
    libfilterfw_native

LOCAL_DISABLE_SINGLE_PRECISION := \

 ifneq ($(filter $(LOCAL_FORCE_FFAST_MATH), $(LOCAL_MODULE)),)
  ifdef LOCAL_CONLYFLAGS
  LOCAL_CONLYFLAGS += -ffast-math -ftree-vectorize
  else
  LOCAL_CONLYFLAGS := -ffast-math -ftree-vectorize
  endif
  ifdef LOCAL_CPPFLAGS
  LOCAL_CPPFLAGS +=  -ffast-math -ftree-vectorize
  else
  LOCAL_CPPFLAGS :=  -ffast-math -ftree-vectorize
  endif
  ifeq ($(filter $(LOCAL_DISABLE_SINGLE_PRECISION), $(LOCAL_MODULE)),)
  LOCAL_CONLYFLAGS += -fsingle-precision-constant
  LOCAL_CPPFLAGS   += -fsingle-precision-constant
  endif
 endif
endif
