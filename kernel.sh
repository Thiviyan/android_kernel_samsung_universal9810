export PATH="/mnt/kernels/lavender/clang/bin:$PATH"
make O=out ARCH=arm64 exynos9810-crownlte_defconfig
       make -j$(nproc --all) O=out \
                             ARCH=arm64 \
			     CC=clang \
			     CROSS_COMPILE=aarch64-linux-gnu- \
			     CROSS_COMPILE_ARM32=arm-linux-gnueabi-