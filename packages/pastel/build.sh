TERMUX_PKG_HOMEPAGE=https://github.com/sharkdp/pastel
TERMUX_PKG_DESCRIPTION="A command-line tool to generate, analyze, convert and manipulate colors"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_LICENSE_FILE="LICENSE-MIT, LICENSE-APACHE"
TERMUX_PKG_MAINTAINER="Yaksh Bariya <thunder-coding@termux.dev>"
TERMUX_PKG_VERSION="0.11.0"
TERMUX_PKG_SRCURL=https://github.com/sharkdp/pastel/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=98639ae6539da5a4c20993daa559ca2d19dde63b601bcb29bb0cebbf56b1ac08
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	termux_setup_rust
}

termux_step_make() {
	SHELL_COMPLETIONS_DIR=$TERMUX_PKG_BUILDDIR/completions cargo build --jobs $TERMUX_PKG_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm755 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/pastel

	# Install completions
	install -Dm600 $TERMUX_PKG_BUILDDIR/completions/_pastel \
		$TERMUX_PREFIX/share/zsh/site-functions/_pastel
	install -Dm600 $TERMUX_PKG_BUILDDIR/completions/pastel.bash \
		$TERMUX_PREFIX/share/bash-completion/completions/pastel.bash
	install -Dm600 $TERMUX_PKG_BUILDDIR/completions/pastel.fish \
		$TERMUX_PREFIX/share/fish/vendor_completions.d/pastel.fish
}
