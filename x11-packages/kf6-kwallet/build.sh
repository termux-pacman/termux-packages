TERMUX_PKG_HOMEPAGE='https://community.kde.org/Frameworks'
TERMUX_PKG_DESCRIPTION='Secure and unified container for user passwords'
TERMUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.16.0"
_KF6_MINOR_VERSION="${TERMUX_PKG_VERSION%.*}"
TERMUX_PKG_SRCURL=https://download.kde.org/stable/frameworks/${_KF6_MINOR_VERSION}/kwallet-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=d8dd330d2c4643d335050c1709252294108a75ab77cdb672b56f40bca6854eed
TERMUX_PKG_DEPENDS="gpgme, gpgmepp, kf6-kcolorscheme (>= ${_KF6_MINOR_VERSION}), kf6-kconfig (>= ${_KF6_MINOR_VERSION}), kf6-kcoreaddons (>= ${_KF6_MINOR_VERSION}), kf6-kcrash (>= ${_KF6_MINOR_VERSION}), kf6-kdbusaddons (>= ${_KF6_MINOR_VERSION}), kf6-ki18n (>= ${_KF6_MINOR_VERSION}), kf6-knotifications (>= ${_KF6_MINOR_VERSION}), kf6-kwidgetsaddons (>= ${_KF6_MINOR_VERSION}), kf6-kwindowsystem (>= ${_KF6_MINOR_VERSION}), libc++, libgcrypt, libsecret, qca, qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules (>= ${_KF6_MINOR_VERSION}), kf6-kservice (>= ${_KF6_MINOR_VERSION}), qt6-qttools"
# TERMUX_PKG_RECOMMENDS="kwalletmanager"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
