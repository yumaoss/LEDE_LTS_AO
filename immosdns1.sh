#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.252/g' package/base-files/files/bin/config_generate
sed -i 's/tools-y += patchelf/tools-y += patchelf upx ucl/g' tools/Makefile
mkdir -p tools/upx
mkdir -p tools/ucl
mkdir -p tools/ucl/patches
wget https://raw.githubusercontent.com/aaa1230217/tools/main/upx/Makefile -nv -O tools/upx/Makefile
wget https://raw.githubusercontent.com/aaa1230217/tools/main/ucl/Makefile -nv -O tools/ucl/Makefile
wget https://raw.githubusercontent.com/aaa1230217/tools/main/ucl/patches/100-fix-apple-m1-support.patch -nv -O tools/ucl/patches/100-fix-apple-m1-support.patch
wget https://raw.githubusercontent.com/aaa1230217/tools/main/ucl/patches/200-ucl-apple-m1-configsub-fix.patch -nv -O tools/ucl/patches/200-ucl-apple-m1-configsub-fix.patch
#git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
