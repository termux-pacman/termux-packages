TERMUX_PKG_HOMEPAGE="https://github.com/yamafaktory/jql"
TERMUX_PKG_DESCRIPTION="A JSON Query Language CLI tool"
TERMUX_PKG_LICENSE="Apache-2.0, MIT"
TERMUX_PKG_LICENSE_FILE="../../LICENSE-APACHE, ../../LICENSE-MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="7.1.6"
TERMUX_PKG_SRCURL=https://github.com/yamafaktory/jql/archive/refs/tags/jql-v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=85f91131ae1305e73f688441c1b053c9126b045ebe9a3cb4e51d260f409a1688
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+.\d+.\d+"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	TERMUX_PKG_SRCDIR+="/crates/jql"
	TERMUX_PKG_BUILDDIR="$TERMUX_PKG_SRCDIR"
}
