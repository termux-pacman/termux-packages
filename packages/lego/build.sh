TERMUX_PKG_HOMEPAGE=https://github.com/go-acme/lego
TERMUX_PKG_DESCRIPTION="Let's Encrypt/ACME client and library written in Go"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Izumi Sena Sora <info@unordinary.eu.org>"
TERMUX_PKG_VERSION="5.0.2"
TERMUX_PKG_SRCURL="https://github.com/go-acme/lego/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=453efba56358afbd3618002ea2b79826f8f5a923ad36a054c0b30c238fe9d44d
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	termux_setup_golang

	mkdir build
	go build -v \
		-trimpath \
		-ldflags "-X main.version=v${TERMUX_PKG_VERSION}" \
		-o build
}

termux_step_make_install() {
	install -Dm700 "build/${TERMUX_PKG_NAME}" "${TERMUX_PREFIX}/bin"
}
