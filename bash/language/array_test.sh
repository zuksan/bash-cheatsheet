#!/bin/bash

array=('q' 'w' 'e' 'r' 't' 'y')
printf "array = "$array"\n"
printf "array[0] = "$array[0]"\n"
printf "array[1] = "${array[1]}"\n"
printf "array[5] = "${array[5]}"\n"
printf "array[10] = "${array[10]}"\n"
array[6]=78 # 扩充，不用$和{}
printf "array[6] = "${array[6]}"\n\n"


nums=(29 100 13 8 91 44)
echo "num[@] = " ${nums[@]}  #输出所有数组元素
nums[10]=66  #给第10个元素赋值（此时会增加数组长度）
echo "num[*] = " ${nums[*]}  #输出所有数组元素

