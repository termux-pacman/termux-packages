TERMUX_PKG_HOMEPAGE=http://www.libpng.org/pub/png/libpng.html
TERMUX_PKG_DESCRIPTION="Official PNG reference library"
TERMUX_PKG_LICENSE="Libpng"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.6.47"
TERMUX_PKG_SRCURL=https://download.sourceforge.net/libpng/libpng-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=b213cb381fbb1175327bd708a77aab708a05adde7b471bc267bd15ac99893631
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BREAKS="libpng-dev"
TERMUX_PKG_REPLACES="libpng-dev"
TERMUX_PKG_RM_AFTER_INSTALL="bin/png-fix-itxt bin/pngfix"

