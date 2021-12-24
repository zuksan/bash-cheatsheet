sudo apt-get install software-properties-common python-software-properties 
sudo add-apt-repository ppa:ondrej/php && sudo apt-get update 
sudo apt-get -y install php7.2 
# 如果之前有其他版本PHP，在这边禁用掉 
sudo a2dismod php5 sudo a2enmod php7.2 
# 安装常用扩展 *安装扩展后重启apache
sudo -y apt-get install\
php7.2-fpm      \
php7.2-mysql    \
php7.2-curl     \
php7.2-json     \
php7.2-mbstring \
php7.2-xml      \
php7.2-intl     \
#  安装其他扩展（按需安装） 
php7.2-gd       \
php7.2-soap     \
php7.2-gmp      \
php7.2-odbc     \
php7.2-pspell   \
php7.2-bcmath   \
php7.2-enchant  \
php7.2-imap     \
php7.2-ldap     \
php7.2-opcache  \
php7.2-readline \
php7.2-sqlite3  \
php7.2-xmlrpc   \
php7.2-bz2      \
php7.2-interbase \
php7.2-pgsql    \
php7.2-recode   \
php7.2-sybase   \
php7.2-xsl      \
php7.2-cgi      \
php7.2-dba      \
php7.2-phpdbg   \
php7.2-snmp     \
php7.2-tidy     \
php7.2-zip      
