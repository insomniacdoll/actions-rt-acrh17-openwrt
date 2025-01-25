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
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# Modify v2ray-plugin
echo 'start modify v2ray-plugin Makefile'
sed -i 's/5.25.0/5.17.0/g' feeds/small/v2ray-plugin/Makefile
sed -i 's/64d2cc376c16ade97b8e2cce69e0c98d74f530dcf8a30cf7d22255969ca5c10d/035823fa70d0c7e6afa6cced6b9d6f8b29c05a5f28852ad5954e957b61337c9e/g' feeds/small/v2ray-plugin/Makefile
echo 'modify v2ray-plugin Makefile OK'

# Modify aliyundrive-webdav
# echo 'start modify aliyundrive-webdav Makefile'
# sed -i 's/stripped/release/g' feeds/packages/multimedia/aliyundrive-webdav/Makefile
# echo 'modify aliyundrive-webdav Makefile OK'
