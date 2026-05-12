TERMUX_PKG_HOMEPAGE="https://invent.kde.org/plasma/libkscreen"
TERMUX_PKG_DESCRIPTION="KDE screen management software"
TERMUX_PKG_LICENSE="LGPL-2.0-or-later"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.6.5"
TERMUX_PKG_SRCURL="https://download.kde.org/stable/plasma/${TERMUX_PKG_VERSION}/libkscreen-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=f2fd11f2f65ff9ca4ff3b50b9953018a929b1bf3263b32ec171c4298e4662149
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++, libwayland, libxcb, qt6-qtbase, qt6-qtwayland"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, plasma-wayland-protocols, qt6-qttools"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
