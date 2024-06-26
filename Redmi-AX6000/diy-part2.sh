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
git clone --depth=1 https://github.com/kenzok8/small.git package/small
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/zouchanggan/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/zouchanggan/SSRP.git package/SSRP
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/luci-app-ddns-go

# 删除软件包
# rm -rf package/passwall-packages/shadowsocksr-libev
rm -rf package/passwall-packages/shadowsocks-rust
rm -rf package/passwall-packages/v2ray-geodata
rm -rf package/passwall-packages/chinadns-ng

# 替换软件&依赖
# cp -r package/SSRP/update/shadowsocksr-libev package/passwall-packages
# cp -r package/SSRP/update/shadowsocks-rust package/passwall-packages
cp -r package/small/shadowsocks-rust package/passwall-packages
cp -r package/small/v2raya package/passwall-packages
cp -r package/helloworld/luci-app-ssr-plus package/passwall-packages
cp -r package/passwall/luci-app-passwall package/passwall-packages
cp -r package/passwall2/luci-app-passwall2 package/passwall-packages
cp -r package/small/luci-app-mosdns package/passwall-packages
cp -r package/small/mosdns package/passwall-packages
cp -r package/small/v2ray-geodata package/passwall-packages
cp -r package/small/chinadns-ng package/passwall-packages
cp -r package/small/v2dat package/passwall-packages
cp -r package/small/lua-neturl package/passwall-packages
cp -r package/small/redsocks2 package/passwall-packages
cp -r package/small/shadow-tls package/passwall-packages

# 删除软件包
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-appfilter
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf package/SSRP
rm -rf package/small
rm -rf package/passwall
rm -rf package/passwall2
rm -rf package/helloworld
# rm -rf package/istore/quickstart
# rm -rf package/istore/luci-app-quickstart
