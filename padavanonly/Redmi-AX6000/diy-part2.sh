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
#sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate

# 删除软件依赖
rm -rf feeds/packages/net/chinadns-ng 
rm -rf feeds/packages/net/hysteria 
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/shadowsocksr-libev
rm -rf feeds/packages/net/shadowsocks-rust 
rm -rf feeds/packages/net/tcping 
rm -rf feeds/packages/net/trojan
rm -rf feeds/packages/net/trojan-go
rm -rf feeds/packages/net/trojan-plus
rm -rf feeds/packages/net/tuic-client  
rm -rf feeds/packages/net/v2raya
rm -rf feeds/packages/net/v2ray-core  
rm -rf feeds/packages/net/v2ray-plugin
rm -rf feeds/packages/net/xray-core 
rm -rf feeds/packages/net/xray-plugin
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/open-app-filter
rm -rf feeds/packages/lang/golang
rm -rf package/libs/mbedtls
 
#添加额外软件包
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
git clone https://github.com/zouchanggan/mbedtls.git package/libs/mbedtls
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall
git clone https://github.com/zouchanggan/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/zouchanggan/SSRP.git package/SSRP

# 删除软件包
rm -rf package/passwall/shadowsocks-rust
rm -rf package/passwall/shadowsocksr-libev
rm -rf package/passwall/v2ray-geodata

# 替换软件&依赖
cp -r package/SSRP/update/shadowsocks-rust package/passwall
cp -r package/SSRP/update/shadowsocksr-libev package/passwall
cp -r package/SSRP/v2raya package/passwall
cp -r package/small/luci-app-ssr-plus package/passwall
cp -r package/small/luci-app-passwall package/passwall
cp -r package/small/luci-app-passwall2 package/passwall
cp -r package/small/luci-app-mosdns package/passwall
cp -r package/small/mosdns package/passwall
cp -r package/small/v2dat package/passwall
cp -r package/small/v2ray-geodata package/passwall
cp -r package/small/lua-neturl package/passwall
cp -r package/small/redsocks2 package/passwall
cp -r package/small/shadow-tls package/passwall


# 删除软件包
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-appfilter
rm -rf package/small
rm -rf package/SSRP
