TERMUX_PKG_HOMEPAGE=https://invent.kde.org/plasma/layer-shell-qt
TERMUX_PKG_DESCRIPTION="Qt component to allow applications to make use of the Wayland wl-layer-shell protocol"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.5.1"
TERMUX_PKG_SRCURL=https://download.kde.org/stable/plasma/${TERMUX_PKG_VERSION}/layer-shell-qt-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=f7367d69f8d1332dd7dc6329521425febbb813faa7f09a7a6e103d41bfb70ac2
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, qt6-qtbase, qt6-qtdeclarative, libwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, libwayland-cross-scanner, libwayland-protocols"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"

termux_step_pre_configure() {
	termux_setup_wayland_cross_pkg_config_wrapper
}
