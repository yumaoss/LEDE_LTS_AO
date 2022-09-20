#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

sed -i 's/192.168.1.1/192.168.50.252/g' package/base-files/files/bin/config_generate

git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/new/passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/new/luci-app--passwall
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/new/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/new/lua-maxminddb
svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash  package/new/luci-app-openclash
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/new/luci-theme-argon
