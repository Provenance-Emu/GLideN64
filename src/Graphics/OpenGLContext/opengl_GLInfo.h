#pragma once
#include "GLFunctions.h"

namespace opengl {

enum class Renderer {
	Adreno530,
	Adreno_no_bugs,
	Adreno,
	VideoCore,
	Intel,
	PowerVR,
	Other
};

struct GLInfo {
	GLint majorVersion = 0;
	GLint minorVersion = 0;
	bool isGLES2 = false;
	bool isGLESX = false;
	bool imageTextures = false;
	bool bufferStorage = false;
	bool texStorage    = false;
	bool shaderStorage = false;
	bool msaa = false;
	bool depthTexture = false;
	bool noPerspective = false;
	bool fragment_interlock = false;
	bool fragment_interlockNV = false;
	bool fragment_ordering = false;
	bool ext_fetch = false;
	Renderer renderer = Renderer::Other;

	void init();
};
}
