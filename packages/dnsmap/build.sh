TERMUX_PKG_HOMEPAGE=https://github.com/resurrecting-open-source-projects/dnsmap
TERMUX_PKG_DESCRIPTION="Subdomain Bruteforcing Tool"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.36
TERMUX_PKG_REVISION=2
termux_step_pre_configure() {
	./autogen.sh
}
