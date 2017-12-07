#!/bin/bash

# DESTDIR is your target project's dir
DESTDIR=~/opt/rt-n56u

ROOTDIR=`pwd`

if [ ! -d "${DESTDIR}" ] ; then
	echo "Target project doesn't exist! Terminate!!!"
	exit 1
fi

copyDict(){
	echo "--------------开始复制语言文件------------------"
	if [ -d "${ROOTDIR}/trunk/user/" ] ; then
		cp -fRv "${ROOTDIR}/trunk/user/" "${DESTDIR}/trunk/"
	fi
	echo "--------------复制语言文件结束------------------"
}

copyRouteConfig(){
	echo "--------------开始复制路由器适配文件------------------"
	if [ -d "${ROOTDIR}/trunk/configs/" ] ; then
		cp -fRv "${ROOTDIR}/trunk/configs/" "${DESTDIR}/trunk/"
	fi
	echo "--------------复制路由器适配文件结束------------------"
}

copyEEPROM(){
	echo "--------------开始复制原厂EEPROM文件------------------"
	if [ -d "${ROOTDIR}/trunk/MT7612E_EEPROM.bin" ] ; then
		cp -fv "${ROOTDIR}/trunk/MT7612E_EEPROM.bin" "${DESTDIR}/trunk/vendors/Ralink/MT7620/MT7612E_EEPROM.bin"
	fi
	echo "--------------复制原厂EEPROM文件结束------------------"
}

copyNormalMode(){
	echo "--------------开始复制正常模式原厂信号增益文件------------------"
	if [ -d "${ROOTDIR}/trunk/MT7620_AP_2T2R-4L_V13.bin" ] ; then
		cp -fv "${ROOTDIR}/trunk/MT7620_AP_2T2R-4L_V13.bin" "${DESTDIR}/trunk/vendors/Ralink/MT7620/MT7620_AP_2T2R-4L_external_LNA_external_PA_V15.bin"
	fi
	echo "--------------复制正常模式原厂信号增益文件结束------------------"
}

copyNoclip(){
	echo "--------------开始复制穿墙模式原厂信号增益文件------------------"
	if [ -d "${ROOTDIR}/trunk/MT7620_AP_2T2R-4L_V15.bin" ] ; then
		cp -fv "${ROOTDIR}/trunk/MT7620_AP_2T2R-4L_V15.bin" "${DESTDIR}/trunk/vendors/Ralink/MT7620/MT7620_AP_2T2R-4L_external_LNA_external_PA_V15.bin"
	fi
	echo "--------------复制复制穿墙模式原厂信号增益文件结束------------------"
}
while :
do
	echo -e "\n"
    echo "请选择你要执行的操作[1|2|3]:"
    echo "-----------------------------"
    echo " [1] 安装汉化文件"
    echo " [2] 安装路由器适配文件"
    echo " [3] 安装正常模式原厂信号增益文件"
    echo " [4] 安装穿墙模式原厂信号增益文件"
    echo " [5] 退出"
    echo "-----------------------------"
    read option
    case ${option} in
        1) copyDict
        ;;
        2) copyRouteConfig
        ;;
        3) copyEEPROM;copyNormalMode
        ;;
        4) copyEEPROM;copyNoclip
        ;;
        5|q|Q|quit|exit)
            break
        ;;
    esac
done
