TERMUX_PKG_HOMEPAGE=http://www.grinninglizard.com/tinyxml2/
TERMUX_PKG_DESCRIPTION="A simple, small, efficient, C++ XML parser"
TERMUX_PKG_LICENSE="ZLIB"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="10.1.0"
TERMUX_PKG_SRCURL=https://github.com/leethomason/tinyxml2/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9da7e1aebbf180ef6f39044b9740a4e96fa69e54a01318488512ae92ca97a685
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DBUILD_SHARED_LIBS=ON"
