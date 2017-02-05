#############################
# mupen64plus-video-gliden64
#############################
include $(CLEAR_VARS)
LOCAL_PATH := $(JNI_LOCAL_PATH)
SRCDIR := ./mupen64plus-video-gliden64/src

#include $(CLEAR_VARS)
#LOCAL_MODULE := android-framework-ui
#LOCAL_SRC_FILES := ./android_framework/lib/$(TARGET_ARCH_ABI)/libui.so
#include $(PREBUILT_SHARED_LIBRARY)

MY_LOCAL_MODULE := mupen64plus-video-gliden64
MY_LOCAL_SHARED_LIBRARIES := freetype
MY_LOCAL_STATIC_LIBRARIES := glidenhq osal
MY_LOCAL_ARM_MODE := arm

MY_LOCAL_C_INCLUDES :=                          \
    $(LOCAL_PATH)/$(SRCDIR)                     \
    $(M64P_API_INCLUDES)                        \
    $(SDL_INCLUDES)                             \
    $(FREETYPE_INCLUDES)                        \
    $(LOCAL_PATH)/$(SRCDIR)/osal                \
    $(ANDROID_FRAMEWORK_INCLUDES)               \

MY_LOCAL_SRC_FILES :=                               \
    $(SRCDIR)/Combiner.cpp                          \
    $(SRCDIR)/CombinerKey.cpp                       \
    $(SRCDIR)/CommonPluginAPI.cpp                   \
    $(SRCDIR)/Config.cpp                            \
    $(SRCDIR)/convert.cpp                           \
    $(SRCDIR)/CRC32.cpp                             \
    $(SRCDIR)/DepthBuffer.cpp                       \
    $(SRCDIR)/DisplayWindow.cpp                     \
    $(SRCDIR)/F3D.cpp                               \
    $(SRCDIR)/F3DBETA.cpp                           \
    $(SRCDIR)/F3DDKR.cpp                            \
    $(SRCDIR)/F3DEX.cpp                             \
    $(SRCDIR)/F3DEX2.cpp                            \
    $(SRCDIR)/F3DEX2CBFD.cpp                        \
    $(SRCDIR)/F3DEX2MM.cpp                          \
    $(SRCDIR)/F3DGOLDEN.cpp                         \
    $(SRCDIR)/F3DPD.cpp                             \
    $(SRCDIR)/F3DSETA.cpp                           \
    $(SRCDIR)/FrameBuffer.cpp                       \
    $(SRCDIR)/FrameBufferInfo.cpp                   \
    $(SRCDIR)/GBI.cpp                               \
    $(SRCDIR)/gDP.cpp                               \
    $(SRCDIR)/GLideN64.cpp                          \
    $(SRCDIR)/GraphicsDrawer.cpp                    \
    $(SRCDIR)/gSP.cpp                               \
    $(SRCDIR)/Keys.cpp                              \
    $(SRCDIR)/L3D.cpp                               \
    $(SRCDIR)/L3DEX2.cpp                            \
    $(SRCDIR)/L3DEX.cpp                             \
    $(SRCDIR)/Log_android.cpp                       \
    $(SRCDIR)/MupenPlusPluginAPI.cpp                \
    $(SRCDIR)/N64.cpp                               \
    $(SRCDIR)/NoiseTexture.cpp                      \
    $(SRCDIR)/PaletteTexture.cpp                    \
    $(SRCDIR)/Performance.cpp                       \
    $(SRCDIR)/PostProcessor.cpp                     \
    $(SRCDIR)/RDP.cpp                               \
    $(SRCDIR)/RSP.cpp                               \
    $(SRCDIR)/S2DEX2.cpp                            \
    $(SRCDIR)/S2DEX.cpp                             \
    $(SRCDIR)/SoftwareRender.cpp                    \
    $(SRCDIR)/TextureFilterHandler.cpp              \
    $(SRCDIR)/Textures.cpp                          \
    $(SRCDIR)/Turbo3D.cpp                           \
    $(SRCDIR)/VI.cpp                                \
    $(SRCDIR)/ZlutTexture.cpp                       \
    $(SRCDIR)/ZSort.cpp                             \
    $(SRCDIR)/common/CommonAPIImpl_common.cpp       \
    $(SRCDIR)/mupenplus/CommonAPIImpl_mupenplus.cpp \
    $(SRCDIR)/mupenplus/Config_mupenplus.cpp        \
    $(SRCDIR)/mupenplus/MupenPlusAPIImpl.cpp        \
    $(SRCDIR)/DepthBufferRender/ClipPolygon.cpp     \
    $(SRCDIR)/DepthBufferRender/DepthBufferRender.cpp     \
    $(SRCDIR)/BufferCopy/ColorBufferToRDRAM.cpp     \
    $(SRCDIR)/BufferCopy/DepthBufferToRDRAM.cpp     \
    $(SRCDIR)/BufferCopy/RDRAMtoColorBuffer.cpp     \
    $(SRCDIR)/Graphics/Context.cpp                  \
    $(SRCDIR)/Graphics/CombinerProgram.cpp          \
    $(SRCDIR)/Graphics/OpenGLContext/GLFunctions.cpp                               \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_Attributes.cpp                         \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_BufferedDrawer.cpp                     \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_BufferManipulationObjectFactory.cpp    \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_CachedFunctions.cpp                    \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_ColorBufferReaderWithBufferStorage.cpp \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_ColorBufferReaderWithPixelBuffer.cpp   \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_ContextImpl.cpp                        \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_GLInfo.cpp                             \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_Parameters.cpp                         \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_TextureManipulationObjectFactory.cpp   \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_UnbufferedDrawer.cpp                   \
    $(SRCDIR)/Graphics/OpenGLContext/opengl_Utils.cpp                              \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_CombinerInputs.cpp                  \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramBuilder.cpp          \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramImpl.cpp             \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_CombinerProgramUniformFactory.cpp   \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_ShaderStorage.cpp                   \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_SpecialShadersFactory.cpp           \
    $(SRCDIR)/Graphics/OpenGLContext/GLSL/glsl_Utils.cpp                           \
    $(SRCDIR)/Graphics/OpenGLContext/mupen64plus/mupen64plus_DisplayWindow.cpp

MY_LOCAL_CFLAGS :=      \
    $(COMMON_CFLAGS)    \
    -g                  \
    -DTXFILTER_LIB      \
    -DANDROID           \
    -DUSE_SDL           \
    -DMUPENPLUSAPI      \
    -DEGL_EGLEXT_PROTOTYPES \
    -fsigned-char       \
    #-DSDL_NO_COMPAT     \

MY_LOCAL_CPPFLAGS := $(COMMON_CPPFLAGS) -std=c++11 -g

MY_LOCAL_LDFLAGS := -Wl,-version-script,$(LOCAL_PATH)/$(SRCDIR)/mupenplus/video_api_export.ver

MY_LOCAL_LDLIBS := -llog -latomic -lEGL

ifeq ($(TARGET_ARCH_ABI), armeabi-v7a)
    # Use for ARM7a:
    MY_LOCAL_SRC_FILES += $(SRCDIR)/3DMathNeon.cpp.neon
    MY_LOCAL_SRC_FILES += $(SRCDIR)/gSPNeon.cpp.neon
    MY_LOCAL_CFLAGS += -D__NEON_OPT
    MY_LOCAL_CFLAGS += -D__VEC4_OPT -mfpu=neon -mfloat-abi=softfp -ftree-vectorize -mvectorize-with-neon-quad -ftree-vectorizer-verbose=2 -funsafe-math-optimizations -fno-finite-math-only

else ifeq ($(TARGET_ARCH_ABI), x86)
#    MY_LOCAL_CFLAGS += -DX86_ASM
    MY_LOCAL_CFLAGS += -D__VEC4_OPT
    MY_LOCAL_SRC_FILES += $(SRCDIR)/3DMath.cpp
endif


###########
# gles 2.0
###########
include $(CLEAR_VARS)
LOCAL_MODULE            := $(MY_LOCAL_MODULE)-gles20
LOCAL_SHARED_LIBRARIES  := $(MY_LOCAL_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES  := $(MY_LOCAL_STATIC_LIBRARIES)
LOCAL_ARM_MODE          := $(MY_LOCAL_ARM_MODE)
LOCAL_C_INCLUDES        := $(MY_LOCAL_C_INCLUDES) $(LOCAL_PATH)/GL/
LOCAL_SRC_FILES         := $(MY_LOCAL_SRC_FILES)
LOCAL_CFLAGS            := $(MY_LOCAL_CFLAGS) -DEGL -DGLES2 -DGLESX
LOCAL_CPPFLAGS          := $(MY_LOCAL_CPPFLAGS)
LOCAL_LDFLAGS           := $(MY_LOCAL_LDFLAGS)
LOCAL_LDLIBS            := $(MY_LOCAL_LDLIBS) -lEGL

include $(BUILD_SHARED_LIBRARY)

###########
# gles 3.x
###########
include $(CLEAR_VARS)
LOCAL_MODULE            := $(MY_LOCAL_MODULE)-gles3x
LOCAL_SHARED_LIBRARIES  := $(MY_LOCAL_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES  := $(MY_LOCAL_STATIC_LIBRARIES)
LOCAL_ARM_MODE          := $(MY_LOCAL_ARM_MODE)
LOCAL_C_INCLUDES        := $(MY_LOCAL_C_INCLUDES) $(LOCAL_PATH)/GL/
LOCAL_SRC_FILES         := $(MY_LOCAL_SRC_FILES)
LOCAL_CFLAGS            := $(MY_LOCAL_CFLAGS) -DEGL -DGLES3_1 -DGLESX
LOCAL_CPPFLAGS          := $(MY_LOCAL_CPPFLAGS)
LOCAL_LDFLAGS           := $(MY_LOCAL_LDFLAGS)
LOCAL_LDLIBS            := $(MY_LOCAL_LDLIBS) -lEGL

include $(BUILD_SHARED_LIBRARY)

###########
# EGL
###########
include $(CLEAR_VARS)
LOCAL_MODULE            := $(MY_LOCAL_MODULE)-egl
LOCAL_SHARED_LIBRARIES  := $(MY_LOCAL_SHARED_LIBRARIES)
LOCAL_STATIC_LIBRARIES  := $(MY_LOCAL_STATIC_LIBRARIES)
LOCAL_ARM_MODE          := $(MY_LOCAL_ARM_MODE)
LOCAL_C_INCLUDES        := $(MY_LOCAL_C_INCLUDES) $(LOCAL_PATH)/GL/
LOCAL_SRC_FILES         := $(MY_LOCAL_SRC_FILES)
LOCAL_CFLAGS            := $(MY_LOCAL_CFLAGS) -DEGL
LOCAL_CPPFLAGS          := $(MY_LOCAL_CPPFLAGS)
LOCAL_LDFLAGS           := $(MY_LOCAL_LDFLAGS)
LOCAL_LDLIBS            := $(MY_LOCAL_LDLIBS) -lEGL

include $(BUILD_SHARED_LIBRARY)
