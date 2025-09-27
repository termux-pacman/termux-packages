TERMUX_PKG_HOMEPAGE=https://github.com/Martchus/qtutilities
TERMUX_PKG_DESCRIPTION="Common Qt related C++ classes and routines used by my applications such as dialogs, widgets and models"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.18.2"
TERMUX_PKG_SRCURL=https://github.com/Martchus/qtutilities/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5abe8f71bcca527dc499ee94c2e28c01fa0ecaeb67b571da8bec62701d089dda
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, libc++utilities, libx11, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="qt6-qtbase-cross-tools, qt6-qttools-cross-tools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
-DQT_PACKAGE_PREFIX=Qt6
"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DQt6LinguistTools_DIR=${TERMUX_PREFIX}/opt/qt6/cross/lib/cmake/Qt6LinguistTools"
	fi
}
