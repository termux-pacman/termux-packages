TERMUX_PKG_HOMEPAGE=https://github.com/termux/termux-exec-package
TERMUX_PKG_DESCRIPTION="An execve() wrapper to make /bin and /usr/bin shebangs work"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1:1.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/termux/termux-exec-package/archive/v${TERMUX_PKG_VERSION:2}.tar.gz
TERMUX_PKG_SHA256=175d7c9eac6f9fc3b949d1a2cee5f5d3ace61420d418d8213369eb6aff18d28f
TERMUX_PKG_ESSENTIAL=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="TERMUX_PREFIX=${TERMUX_PREFIX} TERMUX_BASE_DIR=${TERMUX_BASE_DIR}"
TERMUX_PKG_AUTO_UPDATE=true
