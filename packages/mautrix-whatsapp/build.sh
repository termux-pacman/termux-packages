TERMUX_PKG_HOMEPAGE=https://maunium.net/go/mautrix-whatsapp/
TERMUX_PKG_DESCRIPTION="A Matrix-WhatsApp puppeting bridge"
TERMUX_PKG_LICENSE="AGPL-V3"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.2605.0"
TERMUX_PKG_SRCURL=https://github.com/mautrix/whatsapp/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f84aabb2af10d648a9ff4133d32b066a80aaf511a9b84ca456d244d9734e8f4a
TERMUX_PKG_DEPENDS="libolm"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_pre_configure() {
	termux_setup_golang

	go mod init || :
	go mod tidy
}

termux_step_make() {
	go build \
	-ldflags "-X main.Tag=$TERMUX_PKG_VERSION -X 'main.BuildTime=$(date -d @"$SOURCE_DATE_EPOCH" '+%b %_d %Y, %H:%M:%S')'" \
	./cmd/mautrix-whatsapp
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PREFIX"/bin mautrix-whatsapp
}
