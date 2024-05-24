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
git clone https://github.com/zouchanggan/SSRP.git package/SSRP
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld

# 删除软件包
# rm -rf package/passwall-packages/shadowsocks-rust
rm -rf package/passwall-packages/shadowsocksr-libev
rm -rf package/helloworld/chinadns-ng
rm -rf package/helloworld/mosdns
# rm -rf package/helloworld/shadowsocks-rust
# rm -rf package/helloworld/shadowsocksr-libev
rm -rf package/helloworld/v2raya

# 替换软件&依赖
# cp -rf package/SSRP/update/shadowsocks-rust package/small
# cp -rf package/SSRP/update/shadowsocksr-libev package/small
# cp -rf package/SSRP/update/v2raya package/small
# cp -rf package/SSRP/update/shadowsocks-rust package/passwall-packages
cp -rf package/SSRP/update/shadowsocksr-libev package/passwall-packages
# cp -rf package/SSRP/update/shadowsocks-rust package/helloworld
# cp -rf package/SSRP/update/shadowsocksr-libev package/helloworld
# cp -rf package/SSRP/update/v2raya package/helloworld
cp -rf package/passwall/luci-app-passwall package/passwall-packages
cp -rf package/passwall2/luci-app-passwall2 package/passwall-packages
cp -rf package/small/luci-app-mosdns package/passwall-packages
cp -rf package/small/mosdns package/passwall-packages
cp -rf package/small/v2dat package/passwall-packages
cp -rf package/small/chinadns-ng package/helloworld
cp -rf package/small/mosdns package/helloworld

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
# rm -rf package/istore/quickstart
# rm -rf package/istore/luci-app-quickstart
