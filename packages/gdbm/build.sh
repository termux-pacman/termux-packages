TERMUX_PKG_HOMEPAGE=https://www.gnu.org.ua/software/gdbm/
TERMUX_PKG_DESCRIPTION="Library of database functions that use extensible hashing"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.24"
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/gdbm/gdbm-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=695e9827fdf763513f133910bc7e6cfdb9187943a4fec943e57449723d2b8dbf
TERMUX_PKG_DEPENDS="readline"
TERMUX_PKG_BREAKS="gdbm-dev"
TERMUX_PKG_REPLACES="gdbm-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-libgdbm-compat"

