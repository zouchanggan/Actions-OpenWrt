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
rm -rf feeds/packages/net/ddns-go
 
#添加额外软件包
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
git clone https://github.com/zouchanggan/mbedtls.git package/libs/mbedtls
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/zouchanggan/OpenAppFilter.git package/OpenAppFilter
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/luci-app-ddns-go

# 删除软件包

# 替换软件&依赖

# 删除软件包
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-appfilter
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf package/istore/quickstart
rm -rf package/istore/luci-app-quickstart

# 下载源代码&更新feeds 
./scripts/feeds update -a && ./scripts/feeds install -a
