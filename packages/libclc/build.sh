TERMUX_PKG_HOMEPAGE=https://libclc.llvm.org/
TERMUX_PKG_DESCRIPTION="Library requirements of the OpenCL C programming language"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=16.0.1
TERMUX_PKG_SRCURL=https://github.com/llvm/llvm-project/releases/download/llvmorg-$TERMUX_PKG_VERSION/libclc-$TERMUX_PKG_VERSION.src.tar.xz
TERMUX_PKG_SHA256=23e4c684d50200ab6ec2b0120b4da2531ce8144b131a558ba0d42ab4efe0d996
TERMUX_PKG_BUILD_DEPENDS="libllvm-static, spirv-llvm-translator"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_HOSTBUILD=true

termux_step_host_build() {
	termux_setup_cmake
	termux_setup_ninja
	mkdir -p $TERMUX_PKG_SRCDIR/build
	termux_download https://github.com/llvm/llvm-project/releases/download/llvmorg-$TERMUX_PKG_VERSION/libclc-$TERMUX_PKG_VERSION.src.tar.xz \
		libclc.src.tar.xz \
		$TERMUX_PKG_SHA256
	tar xJf libclc.src.tar.xz
	cd libclc-$TERMUX_PKG_VERSION.src
	mkdir build
	cd build
	cmake .. -G Ninja \
		-DLLVM_SPIRV=/usr/bin/llvm-spirv \
		-DCMAKE_MODULE_PATH=$TERMUX_PREFIX/lib/cmake/llvm
	ninja prepare_builtins
	mkdir -p $TERMUX_PKG_SRCDIR/build
	mv prepare_builtins $TERMUX_PKG_SRCDIR/build/prepare_builtins_hb
}

termux_step_pre_configure() {
	CXXFLAGS+=" -I$TERMUX_PREFIX/include"
	LDFLAGS+=" -lz -lzstd -ltinfo"
}

termux_step_configure() {
	cd build
	cmake .. -G Ninja \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_INSTALL_PREFIX=$TERMUX_PREFIX \
		-DLLVM_SPIRV=/usr/bin/llvm-spirv \
		-DLLVM_CLANG=$(command -v $CC) \
		-DLLVM_AS=$(command -v llvm-as) \
		-DLLVM_LINK=$(command -v llvm-link) \
		-DLLVM_OPT=/usr/lib/llvm-13/bin/opt \
		-DLLVM_CMAKE_DIR=$TERMUX_PREFIX/lib/cmake/llvm \
		-DCMAKE_MODULE_PATH=$TERMUX_PREFIX/lib/cmake/llvm
}

termux_step_make() {
	cd build
	ninja
}

termux_step_make_install() {
	cd build
	ninja install
}
