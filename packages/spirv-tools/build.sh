TERMUX_PKG_HOMEPAGE=https://www.khronos.org/vulkan/
TERMUX_PKG_DESCRIPTION="API and commands for processing SPIR-V modules"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2022.4
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/SPIRV-Tools/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256="a156215a2d7c6c5b267933ed691877a9a66f07d75970da33ce9ad627a71389d7"
TERMUX_PKG_DEPENDS="bash"
TERMUX_PKG_BUILD_DEPENDS="spirv-headers"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DSPIRV_WERROR=Off
-DBUILD_SHARED_LIBS=ON
-DSPIRV_TOOLS_BUILD_STATIC=OFF
-DCMAKE_BUILD_TYPE=None
-DSPIRV-Headers_SOURCE_DIR=$prefix
"

termux_step_pre_configure() {
	termux_setup_cmake
	termux_setup_ninja
}
