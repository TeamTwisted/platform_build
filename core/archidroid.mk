#######################
### GENERAL SECTION ###
#######################

# General optimization level
ARCHIDROID_GCC_CFLAGS_OPTI := -O3

# General optimization level of target ARM compiled with GCC. Default: -O2
ARCHIDROID_GCC_CFLAGS_ARM := $(ARCHIDROID_GCC_CFLAGS_OPTI)

# General optimization level of target THUMB compiled with GCC. Default: -Os
ARCHIDROID_GCC_CFLAGS_THUMB := $(ARCHIDROID_GCC_CFLAGS_OPTI)

# Additional flags passed to all C targets compiled with GCC
ifneq (1,$(words $(filter $(DISABLE),$(LOCAL_MODULE))))
ARCHIDROID_GCC_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_OPTI)
else
ARCHIDROID_GCC_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_OPTI) -fmodulo-sched -fmodulo-sched-allow-regmoves -ftree-parallelize-loops=8 -floop-parallelize-all -g0
endif

DISABLE := \
libvorbisidec

# We also need to disable some warnings to not abort the build - those warning are not critical
ARCHIDROID_GCC_CFLAGS += -Wno-error=array-bounds -Wno-error=clobbered -Wno-error=maybe-uninitialized -Wno-error=parentheses -Wno-error=strict-overflow -Wno-error=unused-variable

# Flags passed to linker (ld) of all C and C++ targets
ARCHIDROID_GCC_LDFLAGS := -Wl,-O3 -Wl,--as-needed -Wl,--gc-sections -Wl,--relax -Wl,--sort-common


# Flags below are applied to specific targets only, use them if your flag is not compatible for both compilers

# We use GCC 5.3 for arm-linux-androideabi, make sure to remove flags below if you decided to stick with 4.9
ifeq (arm64,$(strip $(TARGET_ARCH)))
ARCHIDROID_GCC_CFLAGS_32 := -Wno-error=bool-compare -Wno-error=logical-not-parentheses -Wno-error=sizeof-array-argument 
else
ARCHIDROID_GCC_CFLAGS_32 := -Wno-error=bool-compare -Wno-error=logical-not-parentheses -Wno-error=sizeof-array-argument -mcpu=cortex-a15 -mtune=cortex-a15
endif 

# We use GCC 4.9 for aarch64-linux-android, so we don't have any extra flags for it
ifeq (arm,$(TARGET_ARCH))
ARCHIDROID_GCC_CFLAGS_64 := -mcpu=cortex-a57.cortex-a53 -mtune=cortex-a57.cortex-a53
endif

####################
### MISC SECTION ###
####################

# Flags passed to GCC preprocessor for C and C++
ARCHIDROID_GCC_CPPFLAGS := $(ARCHIDROID_GCC_CFLAGS)

#####################
### CLANG SECTION ###
#####################

# Flags passed to all C targets compiled with CLANG
ARCHIDROID_CLANG_CFLAGS := -O3 -Qunused-arguments -Wno-unknown-warning-option

# Flags passed to CLANG preprocessor for C and C++
ARCHIDROID_CLANG_CPPFLAGS := $(ARCHIDROID_CLANG_CFLAGS)

# Flags passed to linker (ld) of all C and C++ targets compiled with CLANG
ARCHIDROID_CLANG_LDFLAGS := $(ARCHIDROID_GCC_LDFLAGS)

# Flags that are used by GCC, but are unknown to CLANG. If you get "argument unused during compilation" error, add the flag here
ARCHIDROID_CLANG_UNKNOWN_FLAGS := \
  -mvectorize-with-neon-double \
  -mvectorize-with-neon-quad \
  -fgcse-after-reload \
  -fgcse-las \
  -fgcse-sm \
  -fgraphite \
  -fgraphite-identity \
  -fipa-pta \
  -fivopts \
  -floop-block \
  -floop-interchange \
  -floop-nest-optimize \
  -floop-parallelize-all \
  -ftree-parallelize-loops=4 \
  -ftree-parallelize-loops=8 \
  -floop-strip-mine \
  -fmodulo-sched \
  -fmodulo-sched-allow-regmoves \
  -frerun-cse-after-loop \
  -frename-registers \
  -fsection-anchors \
  -ftracer \
  -ftree-loop-im \
  -ftree-loop-ivcanon \
  -funsafe-loop-optimizations 
