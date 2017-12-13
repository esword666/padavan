 

# padavan

padavan汉化文件

## 一、padavan项目地址

项目地址: https://bitbucket.org/padavan/rt-n56u

oschina镜像: https://gitee.com/Kwanlam/rt-n56u.git

## 二、文件说明

1. 保持原项目目录结构

2. 添加汉化文件

3. 添加斐讯K2(PSG1218)路由器适配文件

## 三、配置编译环境

1. 安装git

	`sudo apt-get update`
	
	`sudo apt-get install git`
	
   转到/opt目录，并且用命令克隆 Padavan 仓库
   
	`cd /opt`
	
	`sudo git clone https://bitbucket.org/padavan/rt-n56u.git`

2. 安装编译固件所需要的工具

	`sudo apt-get install git autopoint autoconf automake bison build-essential flex gawk gettext gperf libtool pkg-config zlib1g-dev libgmp3-dev libmpc-dev libmpfr-dev libltdl-dev texinfo python-docutils mc`

3. 克隆源码

	`cd /opt`
	
	`sudo git clone https://bitbucket.org/padavan/rt-n56u.git`

4. 生成工具

	`cd /opt/rt-n56u/toolchain-mipsel`
	
	`sudo ./clean_sources`
	
	`sudo ./build_toolchain`

   注：以后源码更新了，需要执行以下命令。
   
	`sudo git pull`
	
	`cd /opt/rt-n56u/toolchain-mipsel`
	
	`sudo ./clean_sources`
	
	`sudo ./clean_toolchain`
	
	`sudo ./build_toolchain`

   若无法更新，恢复初始再更新
   
	`sudo git stash`
	
	`sudo git pull`

## 四、汉化文件使用方法

1. 编辑install.sh，修改DESTDIR为你的项目目录

	默认 `DESTDIR=/opt/rt-n56u`

2. 执行install.sh将文件复制到你的项目中

	`sh install.sh`

4. 编译项目

	`cd /opt/rt-n56u/trunk`
	
	`sudo ./clear_tree`
	
	`sudo ./build_firmware`
	
编译完成的固件在`/opt/rt-n56u/trunk/images`
