#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://githubfast.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 删除软件包
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr 
# 删除软件依赖
rm -rf feeds/packages/net/brook 
rm -rf feeds/packages/net/chinadns-ng 
rm -rf feeds/packages/net/hysteria 
rm -rf feeds/packages/net/shadowsocksr-libev
rm -rf feeds/packages/net/shadowsocks-rust 
rm -rf feeds/packages/net/tcping 
rm -rf eeds/packages/net/trojan 
rm -rf feeds/packages/net/trojan-go
rm -rf feeds/packages/net/trojan-plus 
rm -rf feeds/packages/net/v2raya
rm -rf feeds/packages/net/v2ray-core 
rm -rf feeds/packages/net/v2ray-geodata 
rm -rf feeds/packages/net/v2ray-plugin
rm -rf feeds/packages/net/xray-core 
rm -rf feeds/packages/net/xray-plugin
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/lang/golang

# Add a feed source
#echo 'src-git helloworld https://githubfast.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://githubfast.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git messense https://githubfast.com/messense/aliyundrive-webdav' >>feeds.conf.default
#echo "src-git kenzo https://githubfast.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
#echo "src-git small https://githubfast.com/kenzok8/small" >> ./feeds.conf.default
## 修改DTS的spi_nand的spi-max-frequency为52MHz
#sed -i 's/spi-max-frequency = <20000000>/spi-max-frequency = <52000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000-uboot.dts
