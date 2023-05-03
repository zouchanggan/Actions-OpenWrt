#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate
##-----------------Add OpenClash dev core------------------
#curl -sL -m 30 --retry 2 https://raw.githubusercontent.com/vernesong/OpenClash/master/core-lateset/dev/clash-linux-arm64.tar.gz -o /tmp/clash.tar.gz
#tar zxvf /tmp/clash.tar.gz -C /tmp >/dev/null 2>&1
#chmod +x /tmp/clash >/dev/null 2>&1
#mkdir -p feeds/luci/applications/luci-app-openclash/root/etc/openclash/core
#mv /tmp/clash feeds/luci/applications/luci-app-openclash/root/etc/openclash/core/clash >/dev/null 2>&1
#rm -rf /tmp/clash.tar.gz >/dev/null 2>&1
##---------------------------------------------------------
# Replace with passwall
rm openwrt/feeds/luci/applications/luci-app-passwall -rf
# Replace with ssr-plus
rm openwrt/feeds/luci/applications/luci-app-ssr-plus -rf
rm openwrt/feeds/packages/net/brook -rf
rm openwrt/feeds/packages/net/chinadns-ng -rf
rm openwrt/feeds/packages/net/dns2socks -rf
rm openwrt/feeds/packages/net/dns2tcp -rf
rm openwrt/feeds/packages/net/hysteria -rf
rm openwrt/feeds/packages/net/ipt2socks -rf
rm openwrt/feeds/packages/net/microsocks -rf
rm openwrt/feeds/packages/net/naiveproxy -rf
rm openwrt/feeds/packages/net/pdnsd-alt -rf
rm openwrt/feeds/packages/net/redsocks2 -rf
rm openwrt/feeds/packages/net/shadowsocksr-libev -rf
rm openwrt/feeds/packages/net/shadowsocks-rust -rf
rm openwrt/feeds/packages/net/simple-obfs -rf
rm openwrt/feeds/packages/net/sing-box -rf
rm openwrt/feeds/packages/net/ssocks -rf
rm openwrt/feeds/packages/net/tcping -rf
rm openwrt/feeds/packages/net/trojan -rf
rm openwrt/feeds/packages/net/trojan-go -rf
rm openwrt/feeds/packages/net/trojan-plus -rf
rm openwrt/feeds/packages/net/v2raya -rf
rm openwrt/feeds/packages/net/v2ray-core -rf
rm openwrt/feeds/packages/net/v2ray-geodata -rf
rm openwrt/feeds/packages/net/v2ray-plugin -rf
rm openwrt/feeds/packages/net/xray-core -rf
rm openwrt/feeds/packages/net/xray-plugin -rf
#rm openwrt/package/lean/luci-theme-argon -rf
