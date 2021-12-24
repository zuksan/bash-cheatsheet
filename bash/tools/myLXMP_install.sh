case $1 in
    apache2) 
        echo "installing apache2"
        sudo apt-get install apache2 -y
        ;;
    nginx)
        # Ubuntu
        sudo add-apt-repository ppa:nginx/stable
        sudo apt-get update
        sudo apt-get install nginx
        ;;
    php-fpm)
        # Ubuntu
        sudo apt-get install python-software-properties
        sudo add-apt-repository ppa:ondrej/php-5.6
        sudo apt-get update
        sudo apt-get install php5-fpm php5-cli php5-curl \
        php5-gd php5-json php5-mcrypt php5-mysqlnd
        ;;
    mariadb)
        echo "installing mariadb"
        # Ubuntu  mariadb
        apt install software-properties-common -y

        apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
        add-apt-repository 'deb [arch=amd64] http://mirrors.tuna.tsinghua.edu.cn/mariadb/repo/10.3/ubuntu bionic main'

        apt update
        apt install mariadb-server -y
        ;;
    php7.3)
        echo "installing php7.3"
        sudo apt-get install python-software-properties
        sudo add-apt-repository ppa:ondrej/php
        sudo apt-get update
        sudo apt-get install -y php7.3
        ;;
    php7.2)
        echo "installing php7.2"
        sudo apt-get install python-software-properties
        sudo add-apt-repository ppa:ondrej/php
        sudo apt-get update
        sudo apt-get install -y php7.2
        ;;
    php7.0)
        echo "installing php7.0"
        sudo apt-get install python-software-properties
        sudo add-apt-repository ppa:ondrej/php
        sudo apt-get update
        sudo apt-get install -y php7.0
        ;;
    phpmyadmin)
        echo "installing phpmyadmin"
        apt-get install phpmyadmin -y
        ;;
esac