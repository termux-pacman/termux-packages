TERMUX_PKG_HOMEPAGE=https://geth.ethereum.org/
TERMUX_PKG_DESCRIPTION="Go implementation of the Ethereum protocol"
TERMUX_PKG_LICENSE="LGPL-3.0, GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.15.6"
TERMUX_PKG_SRCURL=https://github.com/ethereum/go-ethereum/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=b5296151c8a3d07f571cb5691501d8c9c8987fa83d3f8c56396c62c83bb2e08f
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_SUGGESTS="geth-utils"

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "${GOPATH}"/src/github.com/ethereum
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/ethereum/go-ethereum

	cd "$GOPATH"/src/github.com/ethereum/go-ethereum
	for applet in abidump abigen blsync clef devp2p era ethkey evm geth rlpdump; do
		go -C ./cmd/"$applet" build -v
	done
	unset applet
}

termux_step_make_install() {
	for applet in abidump abigen blsync clef devp2p era ethkey evm geth rlpdump; do
		install -Dm700 \
			"$TERMUX_PKG_SRCDIR/cmd/$applet/$applet" \
			"$TERMUX_PREFIX"/bin/
	done
	unset applet
}
