#!/bin/bash
#
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# 删除软件依赖
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns,lucky,tcping,chinadns-ng,trojan,hysteria}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang

#添加额外软件包
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

# 替换软件&依赖
cp -r feeds/small/openwrt-passwall/* feeds/small/ && rm -rf feeds/small/openwrt-passwall

# 删除软件包
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall2
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-lucky
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-v2raya
rm -rf feeds/luci/applications/luci-app-trojan-server
rm -rf feeds/luci/applications/luci-app-dae
rm -rf feeds/luci/applications/luci-app-daed
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/smartdns
rm -rf feeds/packages/net/dae
rm -rf feeds/packages/net/daed
