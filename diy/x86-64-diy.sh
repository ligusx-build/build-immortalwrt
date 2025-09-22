#!/bin/bash

# 执行自定义脚本前的准备工作
#echo "Executing DIY_P1_SH: config/diy-part1.sh..."

# 自定义操作1：添加额外的feeds
echo -e "配置常用包..."
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default

# 自定义操作2：修改默认IP
echo -e "修改默认ip地址..."
sed -i 's/192.168.1.1/10.0.0.2/g' package/base-files/files/bin/config_generate

# 自定义操作3：添加额外的包或配置
echo "添加额外软件包..."

# 举例添加一个包
#git clone https://github.com/yourusername/yourrepo.git package/yourrepo
# 或者在feeds安装后使用
# ./scripts/feeds install your-package

# 自定义操作4：更改主题（如果使用LuCI）
echo "更改主题..."
# 举例：更改LuCI主题
cd package
git clone https://github.com/jerrykuku/luci-theme-argon.git

# 自定义操作5：添加自定义配置
#echo "Adding custom configurations..."
# 举例：在配置文件中添加额外的配置
#echo 'CONFIG_PACKAGE_luci-theme-argon=y' >> .config

# 自定义操作6：其他自定义步骤
#echo "Additional custom steps..."
# 任何其他你想要在构建前执行的步骤
