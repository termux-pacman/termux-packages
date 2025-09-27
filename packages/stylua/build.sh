TERMUX_PKG_HOMEPAGE=https://github.com/JohnnyMorganz/StyLua
TERMUX_PKG_DESCRIPTION="An opinionated Lua code formatter"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.3.0"
TERMUX_PKG_SRCURL=https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e1dfdae2fcbeeae60d1e25102d1845a09501e0afa98a7d31f1e8a4f636695adc
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	termux_setup_rust
	cargo build --jobs $TERMUX_PKG_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release --all-features

}

termux_step_make_install() {
	install -Dm755 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/stylua
}
