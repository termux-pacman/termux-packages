TERMUX_PKG_HOMEPAGE=https://github.com/knqyf263/pet
TERMUX_PKG_DESCRIPTION="Simple command-line snippet manager"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.5.0"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/knqyf263/pet/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=06e2134b93e2aeeabc6252ba4fbed00b34880f8a9163a86972f8515f0147ae08
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="fzf"
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	termux_setup_golang

	go mod init || :
	go mod tidy
}

termux_step_make() {
	go build -o pet -ldflags="-s -w -X 'github.com/knqyf263/pet/cmd.version=${TERMUX_PKG_VERSION}'"
}

termux_step_make_install() {
	install -Dm700 -t "${TERMUX_PREFIX}"/bin "$TERMUX_PKG_SRCDIR"/pet
}

