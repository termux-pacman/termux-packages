TERMUX_PKG_HOMEPAGE=https://01.org/linuxmedia/vaapi
TERMUX_PKG_DESCRIPTION="Video Acceleration (VA) API for Linux"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.17.0
TERMUX_PKG_SRCURL=https://github.com/intel/libva/releases/download/$TERMUX_PKG_VERSION/libva-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=f3e5eb27c305e05a9bb62703d1915a127301cc0c4f9f209025767432230c4eac
TERMUX_PKG_DEPENDS="libdrm, libglvnd, libx11, libxext, libxfixes, libwayland"
TERMUX_PKG_BUILD_DEPENDS="libglvnd"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-static
"

termux_step_pre_configure() {
	CFLAGS+=" -DENABLE_VA_MESSAGING"
}
