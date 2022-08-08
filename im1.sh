#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/packages/net/v2ray-geodata