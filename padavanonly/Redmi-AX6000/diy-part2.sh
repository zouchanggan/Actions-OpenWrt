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

# Replace with passwall
rm -rf openwrt/feeds/luci/applications/luci-app-passwall
# Replace with ssr-plus
rm -rf openwrt/feeds/luci/applications/luci-app-ssr-plus 
rm -rf openwrt/feeds/packages/net/brook 
rm -rf openwrt/feeds/packages/net/chinadns-ng 
rm -rf openwrt/feeds/packages/net/dns2socks
rm -rf openwrt/feeds/packages/net/dns2tcp 
rm -rf openwrt/feeds/packages/net/hysteria 
rm -rf openwrt/feeds/packages/net/ipt2socks 
rm -rf openwrt/feeds/packages/net/microsocks 
rm -rf openwrt/feeds/packages/net/naiveproxy 
rm -rf openwrt/feeds/packages/net/pdnsd-alt
rm -rf openwrt/feeds/packages/net/redsocks2 
rm -rf openwrt/feeds/packages/net/shadowsocksr-libev
rm -rf openwrt/feeds/packages/net/shadowsocks-rust 
rm -rf openwrt/feeds/packages/net/simple-obfs 
rm -rf openwrt/feeds/packages/net/sing-box 
rm -rf openwrt/feeds/packages/net/ssocks 
rm -rf openwrt/feeds/packages/net/tcping 
rm -rf openwrt/feeds/packages/net/trojan f
rm -rf openwrt/feeds/packages/net/trojan-go
rm -rf openwrt/feeds/packages/net/trojan-plus 
rm -rf openwrt/feeds/packages/net/v2raya
rm -rf openwrt/feeds/packages/net/v2ray-core 
rm -rf openwrt/feeds/packages/net/v2ray-geodata 
rm -rf openwrt/feeds/packages/net/v2ray-plugin
rm -rf openwrt/feeds/packages/net/xray-core 
rm -rf openwrt/feeds/packages/net/xray-plugin
rm -rf openwrt/feeds/packages/net/mosdns
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

