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
ARCHIDROID_GCC_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_OPTI) -fmodulo-sched -fmodulo-sched-allow-regmoves -g0 -fpredictive-commoning -ftree-loop-vectorize -ftree-slp-vectorize -fvect-cost-model -ftree-partial-pre -fipa-cp-clone -mvectorize-with-neon-quad

# Add modules to the list which fail to build with rge normal GCC flags
ifneq (1,$(words $(filter $(DISABLE),$(LOCAL_MODULE))))
ARCHIDROID_GCC_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_OPTI)
endif

DISABLE := \
        libvorbisidec

# Bluetooth does crash if you compile with -O3
ifneq (1,$(words $(filter $(BLUETOOTH),$(LOCAL_MODULE))))
ARCHIDROID_GCC_CFLAGS_THUMB := -Os
endif

BLUETOOTH := \
	bluetooth.default \

# We also need to disable some warnings to not abort the build - those warning are not critical
ARCHIDROID_GCC_CFLAGS += -Wno-error=array-bounds -Wno-error=clobbered -Wno-error=maybe-uninitialized -Wno-error=parentheses -Wno-error=strict-overflow -Wno-error=unused-variable -Wno-error=error

# Flags passed to linker (ld) of all C and C++ targets
ARCHIDROID_GCC_LDFLAGS := -Wl,-O3 -Wl,--as-needed -Wl,--gc-sections -Wl,--relax -Wl,--sort-common


# Flags below are applied to specific targets only, use them if your flag is not compatible for both compilers

# We use GCC 5.3 for arm-linux-androideabi, make sure to remove flags below if you decided to stick with 4.9
ARCHIDROID_GCC_CFLAGS_32 := -Wno-error=bool-compare -Wno-error=logical-not-parentheses -Wno-error=sizeof-array-argument -mcpu=cortex-a15 -mtune=cortex-a15

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
  -ftree-parallelize-loops=4 \
  -fmodulo-sched \
  -fmodulo-sched-allow-regmoves \
  -ftree-loop-im \
  -ftree-loop-ivcanon \
  -funsafe-loop-optimizations \
  -mvectorize-with-neon-quad \
  -fpredictive-commoning \
  -ftree-loop-vectorize \
  -ftree-partial-pre \
  -fipa-cp-clone
