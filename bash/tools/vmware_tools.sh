【not available】
CD_PATH=/media/${USER}/VMware\ Tools/  # as for there is space in path, single quotes are required
DES_PATH='./'

#cp ${CD_PATH}'VM*' ${DES_PATH} # this doesnt work
cd ${CD_PATH}
cp 'VM*' ${DES_PATH}
tar -zxvf ${DES_PATH}'VM*'
cd 'vm*'
