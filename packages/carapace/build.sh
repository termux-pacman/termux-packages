TERMUX_PKG_HOMEPAGE=https://carapace.sh/
TERMUX_PKG_DESCRIPTION="Multi-shell multi-command argument completer"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.5.0"
TERMUX_PKG_SRCURL=https://github.com/carapace-sh/carapace-bin/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=844f7deea40c645fcf3a5ad1c7b6648a22306a7a3b4e553fa849475469f60f84
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	termux_setup_golang
}

termux_step_make() {
	( # Do this in a subshell to not mess with the variables for the main build.
	# `go generate` needs to run on the host machine
	# so we borrow a trick from gh and glow's package builds
	unset GOOS GOARCH CGO_LDFLAGS
	unset CC CXX CFLAGS CXXFLAGS LDFLAGS

	go generate ./cmd/carapace/...
	)
	go build -v -ldflags="-X main.version=v${TERMUX_PKG_VERSION} -s -w" -tags release ./cmd/carapace
}

termux_step_make_install() {
	install -Dm700 carapace "$TERMUX_PREFIX/bin/carapace"
}
