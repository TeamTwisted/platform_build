# Copyright (C) 2014-2015 OptiPop
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

WEBCHROMIUM_STATIC_LIBRARIES := \
	android_webview_android_webview_common_gyp \
	android_webview_native_webview_native_gyp \
	base_base_static_gyp \
	base_third_party_dynamic_annotations_dynamic_annotations_gyp \
	cc_cc_gyp \
	base_base_gyp \
	base_allocator_allocator_extension_thunks_gyp \
	third_party_modp_b64_modp_b64_gyp \
	third_party_ashmem_ashmem_gyp \
	third_party_libevent_libevent_gyp \
	gpu_command_buffer_client_gyp \
	gpu_command_buffer_common_gyp \
	gpu_command_buffer_gles2_utils_gyp \
	gpu_command_buffer_service_gyp \
	gpu_disk_cache_proto_gyp \
	third_party_protobuf_protobuf_lite_gyp \
	crypto_crypto_gyp \
	third_party_boringssl_boringssl_gyp \
	third_party_re2_re2_gyp \
	third_party_smhasher_cityhash_gyp \
	ui_gfx_gfx_gyp \
	base_base_i18n_gyp \
	skia_skia_library_gyp \
	skia_skia_opts_gyp \
	skia_skia_opts_neon_gyp \
	third_party_zlib_zlib_gyp \
	third_party_sfntly_sfntly_gyp \
	third_party_expat_expat_gyp \
	third_party_freetype_ft2_gyp \
	third_party_libpng_libpng_gyp \
	skia_skia_chrome_gyp \
	skia_skia_chrome_opts_gyp \
	third_party_harfbuzz_ng_harfbuzz_ng_gyp \
	ui_gfx_gfx_geometry_gyp \
	third_party_libjpeg_turbo_libjpeg_gyp \
	ui_gl_gl_gyp \
	third_party_angle_src_translator_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_angle_src_preprocessor_gyp \
	gpu_gles2_cmd_helper_gyp \
	gpu_gpu_config_gyp \
	gpu_gpu_ipc_gyp \
	ipc_ipc_gyp \
	media_media_gyp \
	third_party_libyuv_libyuv_gyp \
	third_party_libyuv_libyuv_neon_gyp \
	third_party_opus_opus_gyp \
	ui_events_events_base_gyp \
	ui_events_dom4_keycode_converter_gyp \
	url_url_lib_gyp \
	media_shared_memory_support_gyp \
	media_player_android_gyp \
	components_autofill_content_browser_gyp \
	base_base_prefs_gyp \
	content_content_browser_gyp \
	content_content_common_gyp \
	components_tracing_gyp \
	net_net_gyp \
	sdch_sdch_gyp \
	ui_accessibility_accessibility_gyp \
	ui_accessibility_ax_gen_gyp \
	tools_json_schema_compiler_api_gen_util_gyp \
	ui_base_ui_base_gyp \
	ui_events_events_gyp \
	ui_events_gesture_detection_gyp \
	ui_events_platform_events_platform_gyp \
	ui_events_ipc_events_ipc_gyp \
	ui_gfx_ipc_gfx_ipc_gyp \
	ui_shell_dialogs_shell_dialogs_gyp \
	gpu_gles2_c_lib_gyp \
	gpu_gles2_implementation_gyp \
	gpu_gl_in_process_context_gyp \
	gpu_skia_bindings_gpu_skia_bindings_gyp \
	ipc_mojo_ipc_mojo_gyp \
	mojo_mojo_cpp_bindings_gyp \
	mojo_mojo_environment_chromium_gyp \
	mojo_mojo_environment_chromium_impl_gyp \
	mojo_mojo_common_lib_gyp \
	mojo_mojo_system_impl_gyp \
	mojo_mojo_application_bindings_gyp \
	storage_storage_gyp \
	sql_sql_gyp \
	third_party_sqlite_sqlite_gyp \
	libft2 \
	storage_storage_common_gyp \
	third_party_leveldatabase_leveldatabase_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_wtf_wtf_gyp \
	third_party_WebKit_Source_platform_blink_common_gyp \
	third_party_WebKit_Source_platform_blink_heap_asm_stubs_gyp \
	third_party_libwebp_libwebp_dec_gyp \
	third_party_libwebp_libwebp_dsp_gyp \
	third_party_libwebp_libwebp_dsp_neon_gyp \
	third_party_libwebp_libwebp_utils_gyp \
	third_party_libwebp_libwebp_demux_gyp \
	third_party_libwebp_libwebp_enc_gyp \
	third_party_ots_ots_gyp \
	third_party_brotli_brotli_gyp \
	third_party_qcms_qcms_gyp \
	v8_tools_gyp_v8_base_gyp \
	v8_tools_gyp_v8_libbase_gyp \
	v8_tools_gyp_v8_snapshot_gyp \
	third_party_iccjpeg_iccjpeg_gyp \
	third_party_openmax_dl_dl_openmax_dl_gyp \
	third_party_openmax_dl_dl_openmax_dl_armv7_gyp \
	third_party_WebKit_Source_platform_blink_arm_neon_gyp \
	third_party_WebKit_Source_web_blink_web_gyp \
	third_party_WebKit_Source_core_webcore_dom_gyp \
	third_party_libxml_libxml_gyp \
	third_party_libxslt_libxslt_gyp \
	third_party_WebKit_Source_core_webcore_html_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_WebKit_Source_core_webcore_rendering_gyp \
	third_party_WebKit_Source_core_webcore_svg_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	gin_gin_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	webkit_common_gpu_webkit_gpu_gyp \
	third_party_libjingle_libjingle_gyp \
	third_party_webrtc_base_rtc_base_gyp \
	third_party_webrtc_base_rtc_base_approved_gyp \
	third_party_webrtc_libjingle_xmllite_rtc_xmllite_gyp \
	third_party_libjingle_libjingle_p2p_constants_gyp \
	google_apis_google_apis_gyp \
	third_party_zlib_google_zip_gyp \
	third_party_zlib_minizip_gyp \
	ui_snapshot_snapshot_gyp \
	content_browser_service_worker_proto_gyp \
	content_browser_speech_proto_speech_proto_gyp \
	content_content_child_gyp \
	content_content_gpu_gyp \
	content_content_utility_gyp \
	courgette_courgette_lib_gyp \
	third_party_lzma_sdk_lzma_sdk_gyp \
	content_content_common_mojo_bindings_gyp \
	cc_cc_surfaces_gyp \
	mojo_mojo_js_bindings_gyp \
	net_http_server_gyp \
	ui_surface_surface_gyp \
	printing_printing_gyp \
	sandbox_sandbox_services_gyp \
	sandbox_seccomp_bpf_gyp \
	sandbox_seccomp_bpf_helpers_gyp \
	jingle_jingle_glue_gyp \
	third_party_libphonenumber_libphonenumber_gyp \
	third_party_libphonenumber_libphonenumber_without_metadata_gyp \
	components_autofill_content_common_gyp \
	components_autofill_core_common_gyp \
	components_autofill_content_risk_proto_gyp \
	components_autofill_core_browser_gyp \
	third_party_fips181_fips181_gyp \
	third_party_libaddressinput_libaddressinput_util_gyp \
	components_keyed_service_core_gyp \
	components_os_crypt_gyp \
	components_pref_registry_gyp \
	components_webdata_common_gyp \
	components_user_prefs_gyp \
	components_web_contents_delegate_android_gyp \
	components_auto_login_parser_gyp \
	components_autofill_content_renderer_gyp \
	content_content_renderer_gyp \
	cc_blink_cc_blink_gyp \
	media_blink_media_blink_gyp \
	mojo_mojo_js_bindings_lib_gyp \
	ui_native_theme_native_theme_gyp \
	third_party_libjingle_libjingle_webrtc_gyp \
	third_party_libjingle_libjingle_webrtc_common_gyp \
	third_party_libsrtp_libsrtp_gyp \
	third_party_webrtc_modules_media_file_gyp \
	third_party_webrtc_system_wrappers_source_system_wrappers_gyp \
	third_party_webrtc_system_wrappers_source_cpu_features_android_gyp \
	third_party_webrtc_modules_video_capture_module_impl_gyp \
	third_party_webrtc_modules_video_capture_module_gyp \
	third_party_webrtc_modules_webrtc_utility_gyp \
	third_party_webrtc_modules_audio_coding_module_gyp \
	third_party_webrtc_modules_CNG_gyp \
	third_party_webrtc_common_audio_common_audio_gyp \
	third_party_webrtc_common_audio_common_audio_neon_gyp \
	third_party_webrtc_modules_G711_gyp \
	third_party_webrtc_modules_G722_gyp \
	third_party_webrtc_modules_iLBC_gyp \
	third_party_webrtc_modules_iSAC_gyp \
	third_party_webrtc_modules_iSACFix_gyp \
	third_party_webrtc_modules_isac_neon_gyp \
	third_party_webrtc_modules_PCM16B_gyp \
	third_party_webrtc_modules_webrtc_opus_gyp \
	third_party_webrtc_modules_neteq_gyp \
	third_party_webrtc_modules_webrtc_video_coding_gyp \
	third_party_webrtc_modules_webrtc_i420_gyp \
	third_party_webrtc_common_video_common_video_gyp \
	third_party_webrtc_modules_video_coding_utility_video_coding_utility_gyp \
	third_party_webrtc_modules_video_coding_codecs_vp8_webrtc_vp8_gyp \
	third_party_libvpx_libvpx_gyp \
	libvpx_asm_offsets_vp8 \
	libvpx_asm_offsets_vpx_scale \
	third_party_libvpx_libvpx_intrinsics_neon_gyp \
	third_party_webrtc_modules_video_render_module_impl_gyp \
	third_party_webrtc_modules_video_render_module_gyp \
	third_party_usrsctp_usrsctplib_gyp \
	third_party_libjingle_libpeerconnection_gyp \
	third_party_webrtc_voice_engine_voice_engine_gyp \
	third_party_webrtc_modules_audio_conference_mixer_gyp \
	third_party_webrtc_modules_audio_processing_gyp \
	third_party_webrtc_modules_audioproc_debug_proto_gyp \
	third_party_webrtc_modules_audio_processing_neon_gyp \
	lib_core_neon_offsets \
	third_party_webrtc_modules_audio_device_gyp \
	third_party_webrtc_modules_bitrate_controller_gyp \
	third_party_webrtc_modules_rtp_rtcp_gyp \
	third_party_webrtc_modules_paced_sender_gyp \
	third_party_webrtc_modules_remote_bitrate_estimator_gyp \
	third_party_webrtc_modules_remote_bitrate_estimator_rbe_components_gyp \
	third_party_webrtc_webrtc_gyp \
	third_party_webrtc_webrtc_common_gyp \
	third_party_webrtc_video_engine_video_engine_core_gyp \
	third_party_webrtc_modules_video_processing_gyp \
	components_cdm_browser_gyp \
	components_cdm_common_gyp \
	components_cdm_renderer_gyp \
	components_data_reduction_proxy_browser_gyp \
	components_data_reduction_proxy_common_gyp \
	components_navigation_interception_gyp \
	components_visitedlink_browser_gyp \
	components_visitedlink_common_gyp \
	components_visitedlink_renderer_gyp \
	content_content_app_both_gyp \
	v8_tools_gyp_v8_gyp \
	third_party_icu_icui18n_gyp \
	third_party_icu_system_icu_gyp \
	third_party_icu_icuuc_gyp  \
	third_party_WebKit_public_blink_gyp \
	third_party_WebKit_public_blink_resources_gyp \


####################
# FORCE O3 FLAGS   #
####################
ifeq ($(USE_O3_OPTIMIZATIONS),true)

LOCAL_DISABLE_O3 := \
	libstagefright \
	libstagefright_soft_aacdec \
	libstagefright_id3 \
	libbluetooth_jni \
	libbt-brcm_bta \
	libbt-brcm_stack \
	libbt-hci \
	libaudioflinger \
	libbinder \
	libexynosv4l2 \
	bluetooth.default

ifeq ($(DISABLE_OPTIMIZATIONS_ON_CHROMIUM),true)
    LOCAL_DISABLE_O3 += $(WEBCHROMIUM_STATIC_LIBRARIES)
endif

ifeq ($(filter $(LOCAL_DISABLE_O3), $(LOCAL_MODULE)),)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-O3
else
LOCAL_CONLYFLAGS := \
	-O3
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-O3
else
LOCAL_CPPFLAGS := \
	-O3
endif

endif
endif
####################
#  END  03  FLAGS  #
####################


###################
# TARGET_USE_PIPE #
###################

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
#####

#####################
# STRICT_ALIASING   #
#####################
ifeq ($(STRICT_ALIASING),true)
LOCAL_DISABLE_STRICT := \
	libc_malloc \
	libc_bionic \
	libc_dns \
	libc_tzcode \
	libziparchive \
	libtwrpmtp \
	libfuse \
	libfusetwrp \
	libguitwrp \
	busybox \
	libuclibcrpc \
	libziparchive-host \
	libpdfiumcore \
	libandroid_runtime \
	libmedia \
	libpdfiumcore \
	libpdfium \
	bluetooth.default \
	logd \
	mdnsd \
	net_net_gyp \
	libstagefright_webm \
	libaudioflinger \
	libmediaplayerservice \
	libstagefright \
	ping \
	ping6 \
	libdiskconfig \
	libjavacore \
	libfdlibm \
	libvariablespeed \
	librtp_jni \
	libwilhelm \
	libdownmix \
	libldnhncr \
	libqcomvisualizer \
	libvisualizer \
	libutils \
	libandroidfw \
	dnsmasq \
	static_busybox \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
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
	linker \
	camera.msm8084 \
	mm-vdec-omx-test \
	libziparchive-host \
	libziparchive \
	libdiskconfig \
	logd \
	libjavacore \
	camera.msm8084

ifneq ($(filter $(LOCAL_DISABLE_STRICT),$(LOCAL_MODULE)),)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fno-strict-aliasing
endif
ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fno-strict-aliasing
endif

else

ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif
ifndef LOCAL_CLANG
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=3
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=3
else
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=2
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=2
endif
endif
endif
#########################
#  END STRICT_ALIASING  #
#########################


#########################
#    KRAIT_TUNINGS      #
#########################
ifeq ($(KRAIT_TUNINGS),true)
ifndef LOCAL_IS_HOST_MODULE
LOCAL_DISABLE_KRAIT := \
	libc_dns \
	libc_tzcode \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifeq ($(filter $(LOCAL_DISABLE_KRAIT), $(LOCAL_MODULE)),)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -mcpu=cortex-a15 \
	-mtune=cortex-a15
else
LOCAL_CONLYFLAGS := -mcpu=cortex-a15 \
	-mtune=cortex-a15
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -mcpu=cortex-a15 \
	-mtune=cortex-a15
else
LOCAL_CPPFLAGS := -mcpu=cortex-a15 \
	-mtune=cortex-a15
endif
endif
endif
endif
########################
#  END KRAIT_TUNINGS   #
########################

########################
#     ENABLE_GCCONLY   #
########################
ifeq ($(ENABLE_GCCONLY),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GCCONLY := \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifeq ($(filter $(LOCAL_DISABLE_GCCONLY), $(LOCAL_MODULE)),)
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -fira-loop-pressure \
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
LOCAL_CONLYFLAGS := -fira-loop-pressure \
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
LOCAL_CPPFLAGS += -fira-loop-pressure \
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
LOCAL_CPPFLAGS := -fira-loop-pressure \
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
#####

##########################
#  FLOOP_NEST_OPTIMIZE   #
########################## 
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
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-floop-nest-optimize
else
LOCAL_CONLYFLAGS := \
	-floop-nest-optimize
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-floop-nest-optimize
else
LOCAL_CPPFLAGS := \
	-floop-nest-optimize
endif

endif
endif
#############################
#  END FLOOP_NEST_OPTIMIZE  #
#############################




#############################
#       GRAPHITE_OPTS       #
#############################
ifeq ($(GRAPHITE_OPTS),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GRAPHITE := \
	libunwind \
	libFFTEm \
	libicui18n \
	libskia \
	libvpx \
	libmedia_jni \
	libstagefright_mp3dec \
	libart \
	libstagefright_amrwbenc \
	libpdfium \
	libpdfiumcore \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	libjni_filtershow_filters \
	fio \
	libwebrtc_spl \
	libpcap \
	libsigchain \
	libFraunhoferAAC

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
#######################
#  END GRAPHITE_OPTS  #
#######################


####################
# FORCE FFAST-MATH #
####################
ifeq ($(FFAST_MATH),true)
LOCAL_FORCE_FFAST_MATH :=  \
	libskia \
	libGLESv2 \
	libEGL \
	libGLESv1_CM \
	libGLES_android \
	skia_skia_gyp \
	skia_skia_library_gyp \
	ui_gfx_gfx_gyp \
	ui_gfx_ipc_gfx_ipc_gyp \
	ui_gl_gl_gyp \
	libui \
	libgui \
	third_party_WebKit_Source_core_webcore_rendering_gyp \
	third_party_WebKit_Source_core_webcore_svg_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	third_party_WebKit_Source_core_webcore_html_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gy \
	third_party_WebKit_Source_web_blink_web_gyp \
	gpu_gl_in_process_context \
	ui_base_ui_base_gyp \
	ui_gfx_gfx_geometry_gyp \
	ui_shell_dialogs_shell_dialogs_gyp \
	gpu_gpu_ipc_gyp \
	gpu_gles2_c_lib_gyp \
	gpu_gles2_implementation_gyp \
	gpu_gl_in_process_context_gyp \
	gpu_skia_bindings_gpu_skia_bindings_gyp \
	libfilterfw_jni \
	libfilterfw_native \
	libandroid_runtime \
	cc_cc_gyp

LOCAL_DISABLE_SINGLE_PRECISION := \

#########
# To Try#
#########

#        libstagefright_color_conversion \
#        libstagefright_aacenc \
#	libstagefright_soft_h264dec
#        libstagefright_matroska \
#        libstagefright_webm \
#        libstagefright_timedtext \
#        libvpx \
#        libwebm \
#        libstagefright_mpeg2ts \
#        libstagefright_id3 \
#        libFLAC \
#        libmedia_helper
#        skia_skia_gyp
#	gfx_gfx_gyp \
#	ui_gfx_gfx_geometry_gyp \
#	ui_gfx_ipc_gfx_ipc_gyp
#	libfilterfw_native \
#	libpixelflinger \
#	third_party_WebKit_Source_core_webcore_html_gyp -- this modules builds shadow among others need deeper look into the 

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

### Some modules doesn't like forcing single precision, until we fix casting errors, let's disable this optimization
ifeq ($(filter $(LOCAL_DISABLE_SINGLE_PRECISION), $(LOCAL_MODULE)),)
LOCAL_CONLYFLAGS += -fsingle-precision-constant
LOCAL_CPPFLAGS   += -fsingle-precision-constant
endif

endif
endif
