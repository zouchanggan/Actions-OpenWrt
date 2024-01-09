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

#添加额外软件包
git clone https://github.com/sbwml/packages_lang_golang -b 21.x feeds/packages/lang/golang
git clone https://github.com/kenzok8/small.git package/small
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Add a feed source
#echo 'src-git helloworld https://githubfast.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://githubfast.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git messense https://githubfast.com/messense/aliyundrive-webdav' >>feeds.conf.default
#echo "src-git kenzo https://githubfast.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
#echo "src-git small https://githubfast.com/kenzok8/small" >> ./feeds.conf.default
## 修改DTS的spi_nand的spi-max-frequency为52MHz
#sed -i 's/spi-max-frequency = <20000000>/spi-max-frequency = <52000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000-uboot.dts
