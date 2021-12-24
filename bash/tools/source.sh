# if [ -e $1 ]
#     echo "no options"
# elif [ $1 = "install" ]
#     echo "source" >> test.txt
# elif [$1 = "uninstall" ]
#     echo "uninstall"
# fi

################ Ubuntu18.04 ##################
SOURCES_PATH='/etc/apt/'
sudo cp ${SOURCES_PATH}sources.list ${SOURCES_PATH}sources.list.bkp     # create backup for sources
# cover output to the end of file
cat > ${SOURCES_PATH}sources.list <<EOF
# deb cdrom:[Ubuntu 18.04.2 LTS _Bionic Beaver_ - Release amd64 (20190210)]/ bionic main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security multiverse
EOF

sudo apt-get update   # update source
sudo apt-get upgrade  # upgrade apps
