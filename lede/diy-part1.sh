#!/bin/bash
#
# Add a feed source
# echo 'src-git moruiris https://github.com/moruiris/openwrt-packages;lede' >>feeds.conf.default
# git clone -b small https://github.com/zouchanggan/openwrt-packages ./package/small
sed -i '5i src-git small https://github.com/zouchanggan/openwrt-packages;small' feeds.conf.default
