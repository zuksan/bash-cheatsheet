
## SSH

```bash
sudo apt-get install openssh-server
sudo service sshd start # 开启SSH服务
sudo service sshd status # 查看状态
```
- [远程连接虚拟机（ssh）详细步骤_一个不甘于此的弱鸡-CSDN博客_ssh连接虚拟机](https://blog.csdn.net/qq_40910138/article/details/105986831)

## apt 换源

```bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo vim /etc/apt/sources.list

echo "
deb http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse
" > /etc/apt/sources.list
```

```bash
# Ubuntu/Debian
sudo apt update
sudo apt upgrade
```


### apt添加kylin源

```bash
sudo apt install curl
curl -sL 'https://keyserver.ubuntu.com/pks/lookup?&op=get&search=0x73BC8FBCF5DE40C6ADFCFFFA9C949F2093F565FF' | sudo apt-key add
sudo apt-add-repository 'deb http://archive.ubuntukylin.com/ukui focal main'
sudo apt upgrade
```

## 服务器管理

```bash
apt install htop
apt install vim
```

### samba-文件共享/FTP

```bash
#install 
sudo apt install samba samba-common

sudo vim /etc/samba/smb.conf
sudo systemctl restart smb nmb
sudo service smbd restart
```

```conf
[code]
path = /code
avilable = yes
browseable = yes
read only = no
writable = yes
public = yes
force create mode = 0777
force directory mode = 0777
```

## 基本工具链

### 基本的C/C++工具链

```bash
sudo apt install build-essential
sudo apt install cmake
sudo apt install gdb
```

### JS

```bash
sudo apt install npm
```