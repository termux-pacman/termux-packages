TERMUX_PKG_HOMEPAGE=https://asymptote.sourceforge.io/
TERMUX_PKG_DESCRIPTION="A powerful descriptive vector graphics language for technical drawing"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.08"
TERMUX_PKG_SRCURL="https://downloads.sourceforge.net/asymptote/asymptote-${TERMUX_PKG_VERSION}.src.tgz"
TERMUX_PKG_SHA256=7f2f641e1f8fede4e997d032cb6f88ca3b200f0f1b9f1ab92998387163a196f8
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="fftw, libc++, libtirpc, zlib, ncurses, readline"
TERMUX_PKG_BUILD_DEPENDS="glm"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-gc
--disable-lsp
"

termux_step_pre_configure() {
	rm -f CMakeLists.txt
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin asy
	cp -rT base $TERMUX_PREFIX/share/asymptote
}
