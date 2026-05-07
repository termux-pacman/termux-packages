TERMUX_PKG_HOMEPAGE="https://invent.kde.org/graphics/libkexiv2"
TERMUX_PKG_DESCRIPTION="A kde library to manipulate pictures metadata"
TERMUX_PKG_LICENSE="LGPL-2.0-or-later"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="26.04.1"
TERMUX_PKG_SRCURL="https://download.kde.org/stable/release-service/${TERMUX_PKG_VERSION}/src/libkexiv2-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=7827c710db4b63d059a0721b6a2a833663d0c457bf4219eb8dfc1c98b19c93e5
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="exiv2, libc++"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt6-qtbase"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DBUILD_WITH_QT6=ON
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
