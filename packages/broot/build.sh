TERMUX_PKG_HOMEPAGE=https://github.com/Canop/broot
TERMUX_PKG_DESCRIPTION="A better way to navigate directories"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.52.0"
TERMUX_PKG_SRCURL=https://github.com/Canop/broot/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2f0c9b52a97cf32f617e39084bfff8271d4a3d9b30f8ec2811b577cb433d7743
TERMUX_PKG_DEPENDS="libgit2"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	termux_setup_rust

	: "${CARGO_HOME:=$HOME/.cargo}"
	export CARGO_HOME

	cargo fetch --target "${CARGO_TARGET_NAME}"

	local f
	for f in $CARGO_HOME/registry/src/*/libgit2-sys-*/build.rs; do
		sed -i -E 's/\.range_version\(([^)]*)\.\.[^)]*\)/.atleast_version(\1)/g' "${f}"
	done
	sed -i '/trash/d' $TERMUX_PKG_SRCDIR/Cargo.toml
}

termux_step_make() {
	cargo build --jobs $TERMUX_PKG_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release

	mkdir -p build
	cp man/page build/broot.1
	sed -i "s/#version/$TERMUX_PKG_VERSION/g" build/broot.1
	sed -i "s/#date/$(date -r man/page +'%Y\/%m\/%d')/g" build/broot.1

}

termux_step_make_install() {
	install -Dm755 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/broot
	install -Dm644 -t $TERMUX_PREFIX/share/man/man1 build/broot.1
}
