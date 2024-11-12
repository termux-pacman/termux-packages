TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-places-plugin/start
TERMUX_PKG_DESCRIPTION="This plugin brings much of the functionality of GNOME Places menu to Xfce"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@Yisus7u7"
_MAJOR_VERSION=1.8
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.3
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-places-plugin/${_MAJOR_VERSION}/xfce4-places-plugin-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=f11d0e6d03f22ab02c2e6b507d365b5a918532e8819e50647ee1860eca60c743
TERMUX_PKG_DEPENDS="atk, exo, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libice, libnotify, libsm, libx11, libxfce4ui, libxfce4util, pango, xfce4-panel, xfconf"
TERMUX_PKG_BUILD_IN_SRC=true

