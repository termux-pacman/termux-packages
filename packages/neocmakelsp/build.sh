TERMUX_PKG_HOMEPAGE=https://github.com/Decodetalkers/neocmakelsp
TERMUX_PKG_DESCRIPTION="a cmake lsp based on tower-lsp and treesitter"
TERMUX_PKG_LICENSE=MIT
TERMUX_PKG_MAINTAINER=@termux
TERMUX_PKG_VERSION="0.8.16"
TERMUX_PKG_SRCURL=https://github.com/Decodetalkers/neocmakelsp/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=fd533468e0ab23977243d4923715dc010ddd9d299f8a3d21c1252cfc1ee009b9
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	rm -f meson.build
}

termux_step_post_make_install() {
	install -Dm600 -t "${TERMUX_PREFIX}/share/bash-completion/completions" completions/bash/neocmakelsp
	install -Dm600 -t "${TERMUX_PREFIX}/share/fish/vendor_completions.d" completions/fish/neocmakelsp.fish
	install -Dm600 -t "${TERMUX_PREFIX}/share/zsh/site-functions" completions/zsh/_neocmakelsp
}
