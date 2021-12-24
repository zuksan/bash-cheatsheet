## [Windows下Git多账号配置，同一电脑多个ssh-key的管理 - popfisher - 博客园](https://www.cnblogs.com/popfisher/p/5731232.html)
echo "need to run under admin"
case $1 in
    1)
        echo generating ssh key
        mkdir ~/.ssh
        cd ~/.ssh
        read -p "Enter some information > " name
        ssh-keygen -t rsa -C $name
        ;;
    2)
        echo "need to add ssh-key to github site"
        ;;
    3)
        echo ;;
esac
