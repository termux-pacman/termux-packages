TERMUX_PKG_HOMEPAGE=https://github.com/logrotate/logrotate
TERMUX_PKG_DESCRIPTION="Simplify the administration of log files on a system which generates a lot of log files"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=3.18.1
TERMUX_PKG_REVISION=2
termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
