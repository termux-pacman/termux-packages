TERMUX_PKG_HOMEPAGE=https://github.com/StackExchange/dnscontrol
TERMUX_PKG_DESCRIPTION="Infrastructure as code for DNS!"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Izumi Sena Sora <info@unordinary.eu.org>"
TERMUX_PKG_VERSION="4.35.0"
TERMUX_PKG_SRCURL="https://github.com/StackExchange/dnscontrol/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=a6e6c281f11941a3cb0f1f69ed1cb314fe78730647063255d6fd5d6f615b8186
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	termux_setup_golang

	go build -o "${TERMUX_PKG_NAME}"
}

termux_step_make_install() {
	install -Dm700 "${TERMUX_PKG_NAME}" "${TERMUX_PREFIX}/bin"
}
