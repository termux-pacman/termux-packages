TERMUX_PKG_HOMEPAGE=https://github.com/nu774/fdkaac
TERMUX_PKG_DESCRIPTION="command line encoder frontend for libfdk-aac"
TERMUX_PKG_LICENSE="ZLIB"
TERMUX_PKG_MAINTAINER="@DLC01"
TERMUX_PKG_VERSION=1.0.2
TERMUX_PKG_REVISION=2
termux_step_pre_configure() {
	autoreconf -fi
}
