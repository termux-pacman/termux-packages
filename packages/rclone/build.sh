TERMUX_PKG_HOMEPAGE=https://rclone.org/
TERMUX_PKG_DESCRIPTION="rsync for cloud storage"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.70.3"
TERMUX_PKG_SRCURL=https://github.com/rclone/rclone/releases/download/v${TERMUX_PKG_VERSION}/rclone-v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e9399f0e940b3f7444a0322f35245c2e021b9e9af0709ba928e82e58f35c00d8
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make_install() {
	cd $TERMUX_PKG_SRCDIR

	termux_setup_golang

	mkdir -p .gopath/src/github.com/rclone
	ln -sf "$PWD" .gopath/src/github.com/rclone/rclone
	export GOPATH="$PWD/.gopath"

	go build -v -ldflags "-X github.com/rclone/rclone/fs.Version=v${TERMUX_PKG_VERSION}-termux" -tags noselfupdate -o rclone

	# XXX: Fix read-only files which prevents removal of src dir.
	chmod u+w -R .

	cp rclone $TERMUX_PREFIX/bin/rclone
	mkdir -p $TERMUX_PREFIX/share/man/man1/
	cp rclone.1 $TERMUX_PREFIX/share/man/man1/
}
