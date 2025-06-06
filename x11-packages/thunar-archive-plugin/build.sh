TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/thunar/archive
TERMUX_PKG_DESCRIPTION="This plugin allows one to extract and create archive from inside the Thunar file manager."
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@Yisus7u7"
TERMUX_PKG_VERSION="0.6.0"
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/thunar-plugins/thunar-archive-plugin/${TERMUX_PKG_VERSION%.*}/thunar-archive-plugin-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=692708cd047c7a552f2f85fe2ee32f19c7d5be5bf695d0288e8cadf50289db06
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="glib, gtk3, libxfce4util, thunar"
TERMUX_PKG_RECOMMENDS="file-roller"
