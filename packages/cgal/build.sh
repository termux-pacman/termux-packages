TERMUX_PKG_HOMEPAGE=https://www.cgal.org/
TERMUX_PKG_DESCRIPTION="Computational Geometry Algorithms Library"
TERMUX_PKG_LICENSE="GPL-3.0, LGPL-3.0, BSL-1.0, MIT"
TERMUX_PKG_LICENSE_FILE="LICENSE, LICENSE.BSL, LICENSE.GPL, LICENSE.LGPL, LICENSE.RFL"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="5.6.1"
TERMUX_PKG_SRCURL=https://github.com/CGAL/cgal/releases/download/v${TERMUX_PKG_VERSION}/CGAL-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=cdb15e7ee31e0663589d3107a79988a37b7b1719df3d24f2058545d1bcdd5837
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_GROUPS="science"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DWITH_CGAL_Qt5=OFF
-DWITH_demos=OFF
-DWITH_examples=OFF
-DWITH_tests=OFF
"
