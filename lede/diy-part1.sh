#!/bin/bash
#
# Add a feed source
#echo 'src-git moruiris https://github.com/moruiris/openwrt-packages;lede' >>feeds.conf.default
# DIY-1 此脚本功能：添加外部插件
# =======================================================================================================================
# 添加 PassWall 插件
# echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
# echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 添加外部软件源
echo "src-git small https://github.com/zouchanggan/openwrt-packages.git;small" >> "feeds.conf.default"

# 更新替换golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

# 删除依赖(防止插件冲突，删除重复)
rm -rf feeds/packages/net/{lucky,alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang

# 删除软件包(防止插件冲突，删除重复)
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf feeds/luci/applications/luci-app-appfilter
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-lucky
rm -rf feeds/luci/applications/luci-app-smartdns
./scripts/feeds update -a && ./scripts/feeds install -a
