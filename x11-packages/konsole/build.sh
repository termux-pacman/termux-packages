TERMUX_PKG_HOMEPAGE=https://apps.kde.org/konsole/
TERMUX_PKG_DESCRIPTION="KDE terminal emulator"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="25.08.2"
TERMUX_PKG_SRCURL=https://download.kde.org/stable/release-service/${TERMUX_PKG_VERSION}/src/konsole-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=220fb44a02e5dd3110bc7d8a04f4d7c910bc99b5b1877a36befd06d1e65fe377
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="kf6-kbookmarks, kf6-kconfig, kf6-kconfigwidgets, kf6-kcoreaddons, kf6-kcrash, kf6-kguiaddons, kf6-ki18n, kf6-kiconthemes, kf6-kio, kf6-knewstuff, kf6-knotifications, kf6-knotifyconfig, kf6-kparts, kf6-kpty, kf6-kservice, kf6-ktextwidgets, kf6-kwidgetsaddons, kf6-kwindowsystem, kf6-kxmlgui, qt6-qtbase, qt6-qtmultimedia"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules"

termux_step_pre_configure() {
	if [[ "$TERMUX_ON_DEVICE_BUILD" == "false" ]]; then
		TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DKF6_HOST_TOOLING=$TERMUX_PREFIX/opt/kf6/cross/lib/cmake/"
	fi
}
