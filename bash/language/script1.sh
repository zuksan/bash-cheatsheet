printf "script: "
for i in $@
do 
    printf $i,
done
printf "\n"

globalVar=$@

fn1() {	
    printf "fn1内的\$#=$#, \$@："
    echo $@

    printf "fn1通过全局变量得到值："
    for i in $globalVar
    do 
        printf $i,
    done
    printf "\n"
}

fn2() {
    printf "fn2内的\$#=$#, \$@："
    echo $@
}
printf "fn1(x, y, z)\n"
fn1 x y z
printf "fn2(\$@, a, b, c, d)\n"
fn2 $@ a b c d
