TERMUX_PKG_HOMEPAGE=https://www.khronos.org/registry/spir-v/
TERMUX_PKG_DESCRIPTION="SPIR-V Headers"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.3.236.0
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/SPIRV-Headers/archive/refs/tags/sdk-$TERMUX_PKG_VERSION/spirv-headers-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=4d74c685fdd74469eba7c224dd671a0cb27df45fc9aa43cdd90e53bd4f2b2b78
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_pre_configure() {
	termux_setup_cmake
}
