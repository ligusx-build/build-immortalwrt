#!/bin/bash

# 执行自定义脚本前的准备工作
#echo "Executing DIY_P1_SH: config/diy-part1.sh..."

# 更改到OpenWrt目录
cd openwrt

# 自定义操作1：添加额外的feeds
#echo "Adding custom feeds..."
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> ./feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >> ./feeds.conf.default

# 自定义操作2：更新feeds
#echo "Updating feeds..."
#./scripts/feeds update -a

# 自定义操作3：安装feeds
#echo "Installing feeds..."
#./scripts/feeds install -a

# 自定义操作4：修改默认IP
#echo "Changing the default IP address..."
#sed -i 's/192.168.1.1/10.0.0.2/g' package/base-files/files/bin/config_generate

# 自定义操作5：添加额外的包或配置
#echo "Adding custom packages..."
# 举例添加一个包
#git clone https://github.com/yourusername/yourrepo.git package/yourrepo
# 或者在feeds安装后使用
# ./scripts/feeds install your-package

# 自定义操作6：更改主题（如果使用LuCI）
#echo "Changing theme..."
# 举例：更改LuCI主题
sed -i "s/'bootstrap'/'argon'/" feeds/luci/collections/luci/Makefile

# 自定义操作7：添加自定义配置
#echo "Adding custom configurations..."
# 举例：在配置文件中添加额外的配置
#echo 'CONFIG_PACKAGE_luci-theme-argon=y' >> .config

# 自定义操作8：其他自定义步骤
echo "Additional custom steps..."
# 任何其他你想要在构建前执行的步骤
