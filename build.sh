#export PATH="/mnt/roms/KekHunter/prebuilts/clang/host/linux-x86/clang-r353983b/bin:$PATH"
#export CROSS_COMPILE=/mnt/roms/KekHunter/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export CROSS_COMPILE_ARM32=/mnt/roms/KekHunter/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
make O=out exynos9810-crownlte_defconfig
PATH="/mnt/roms/KekHunter/prebuilts/clang/host/linux-x86/clang-r353983b/bin:/mnt/roms/KekHunter/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:/mnt/roms/KekHunter/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin:${PATH}" \

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-androideabi-