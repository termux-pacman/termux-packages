TERMUX_PKG_HOMEPAGE=https://libcoap.net/
TERMUX_PKG_DESCRIPTION="Implementation of CoAP, a lightweight protocol for resource constrained devices"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_LICENSE_FILE="COPYING, LICENSE"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.3.4a"
TERMUX_PKG_SRCURL=https://github.com/obgm/libcoap/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=45f1aabbb5f710e841c91d65fc3f37c906d42e8fc44dd04979e767d3960a77cf
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BREAKS="libcoap-dev"
TERMUX_PKG_REPLACES="libcoap-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-openssl --disable-doxygen"

termux_step_pre_configure() {
	NOCONFIGURE=1 ./autogen.sh
}
