TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-eyes-plugin/start
TERMUX_PKG_DESCRIPTION="This plugin adds eyes to the Xfce panel which follow your cursor, similar to the xeyes program."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@Yisus7u7"
_MAJOR_VERSION=4.6
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.0
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-eyes-plugin/${_MAJOR_VERSION}/xfce4-eyes-plugin-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=ad0ff05d88ba393b7c8922f8233edd33fc0a4e8b000b61de1f8f3a10c5ae5324
TERMUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libxfce4ui, libxfce4util, pango, xfce4-panel"
TERMUX_PKG_BUILD_IN_SRC=true

