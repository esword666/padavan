
# padavan

padavan汉化文件

## 一、padavan项目地址

项目地址: https://bitbucket.org/padavan/rt-n56u

oschina镜像（不定期同步）: https://git.oschina.net/gorden5566/rt-n56u

## 二、文件说明

1. 保持原项目目录结构

2. 添加汉化文件

3. 添加斐讯K2(PSG1218)路由器适配文件

## 三、汉化文件使用方法

1. 编辑install.sh，修改DESTDIR为你的项目目录

	默认 `DESTDIR=~/opt/rt-n56u`

2. 执行install.sh将文件复制到你的项目中

	`sh install.sh`

3. 编辑你的项目trunk目录下的.config，修改语言配置项

	`CONFIG_FIRMWARE_INCLUDE_LANG_CN=y`

4. 编译项目

## 四、路由器适配文件说明

1. 路由器适配文件位于`padavan/trunk/configs/boards`目录下。

2. 编辑你的项目trunk目录下的.config，修改路由器型号相关配置

	`CONFIG_PRODUCT=MT7620`

	`CONFIG_FIRMWARE_PRODUCT_ID="PSG1218"`
