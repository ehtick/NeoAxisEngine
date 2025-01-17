# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = $(ANDROID_NDK_CLANG)/bin/clang
CXX = $(ANDROID_NDK_CLANG)/bin/clang++
AR  = $(ANDROID_NDK_CLANG)/bin/x86_64-linux-android-ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = bgfx.make

ifeq ($(config),debug32)
  OBJDIR              = ../../android-x86_64/obj/x32/Debug/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_CONFIG_DEBUG=1
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -m32 -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxDebug.a
  LDDEPS             += ../../android-x86_64/bin/libbxDebug.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../android-x86_64/obj/x32/Release/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -m32 -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxRelease.a
  LDDEPS             += ../../android-x86_64/bin/libbxRelease.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../android-x86_64/obj/x64/Debug/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_CONFIG_DEBUG=1
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -m64 -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxDebug.a
  LDDEPS             += ../../android-x86_64/bin/libbxDebug.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../android-x86_64/obj/x64/Release/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -m64 -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxRelease.a
  LDDEPS             += ../../android-x86_64/bin/libbxRelease.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../android-x86_64/obj/Debug/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_CONFIG_DEBUG=1
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxDebug.a
  LDDEPS             += ../../android-x86_64/bin/libbxDebug.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../android-x86_64/obj/Release/bgfx
  TARGETDIR           = ../../android-x86_64/bin
  TARGET              = $(TARGETDIR)/libbgfxRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG
  INCLUDES           += -I"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/include" -I"${ANDROID_NDK_ROOT}/sysroot/usr/include" -I"$(ANDROID_NDK_ROOT)/sources/android/native_app_glue" -I"$(ANDROID_NDK_ROOT)/sysroot/usr/include/x86_64-linux-android" -I"../../../3rdparty" -I"../../../../bx/include" -I"../../../../bimg/include" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 -target x86_64-linux-android -march=x86-64 -mtune=atom -mstackrealign -msse3 -mfpmath=sse
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"$(ANDROID_NDK_ROOT)/sources/cxx-stl/llvm-libc++/libs/x86_64" -L"." -L"../../android-x86_64/bin" -nostdlib -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -gcc-toolchain $(ANDROID_NDK_X86) --sysroot=$(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64 $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtbegin_so.o $(ANDROID_NDK_ROOT)/platforms/android-26/arch-x86_64/usr/lib/crtend_so.o -target x86_64-unknown-linux
  LIBDEPS            += ../../android-x86_64/bin/libbxRelease.a
  LDDEPS             += ../../android-x86_64/bin/libbxRelease.a
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lgcc -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/special.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexdecl.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving bgfx
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(LINKOBJS)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning bgfx
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

$(OBJDIR)/src/bgfx.o: ../../../src/bgfx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/debug_renderdoc.o: ../../../src/debug_renderdoc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/dxgi.o: ../../../src/dxgi.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_eagl.o: ../../../src/glcontext_eagl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_egl.o: ../../../src/glcontext_egl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_glx.o: ../../../src/glcontext_glx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_html5.o: ../../../src/glcontext_html5.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_nsgl.o: ../../../src/glcontext_nsgl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_wgl.o: ../../../src/glcontext_wgl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/nvapi.o: ../../../src/nvapi.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d11.o: ../../../src/renderer_d3d11.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d12.o: ../../../src/renderer_d3d12.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d9.o: ../../../src/renderer_d3d9.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_gl.o: ../../../src/renderer_gl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_gnm.o: ../../../src/renderer_gnm.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_mtl.o: ../../../src/renderer_mtl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_noop.o: ../../../src/renderer_noop.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_nvn.o: ../../../src/renderer_nvn.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_vk.o: ../../../src/renderer_vk.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader.o: ../../../src/shader.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_dx9bc.o: ../../../src/shader_dx9bc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_dxbc.o: ../../../src/shader_dxbc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_spirv.o: ../../../src/shader_spirv.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/special.o: ../../../src/special.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/topology.o: ../../../src/topology.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/vertexdecl.o: ../../../src/vertexdecl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
