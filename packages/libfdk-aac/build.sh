TERMUX_PKG_HOMEPAGE=https://github.com/mstorsjo/fdk-aac
TERMUX_PKG_DESCRIPTION="Fraunhofer FDK AAC Codec Library"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_MAINTAINER="@DLC01"
TERMUX_PKG_VERSION=2.0.2
TERMUX_PKG_REVISION=3
termux_step_pre_configure() {
	./autogen.sh
}
