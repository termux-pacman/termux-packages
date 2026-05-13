TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/gsasl
TERMUX_PKG_DESCRIPTION="GNU SASL library"
TERMUX_PKG_LICENSE="LGPL-2.1, GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.2.3"
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/gsasl/gsasl-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=fee36c66ac12d32d3bf29a7b35ad8f444b7996fe369b9da5d36fd6ae649c68eb
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libidn"
TERMUX_PKG_BREAKS="libgsasl-dev"
TERMUX_PKG_REPLACES="libgsasl-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_func_getpass=yes
--without-libgcrypt
"
