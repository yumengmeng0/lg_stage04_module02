#!/bin/bash

#定义两个变量
ia=5
ib=2

#打印两个变量的数值
echo "ia=$ia"
echo "ib=$ib"

#实现加法运算，要求+两边必须有空格
echo `expr $ia + $ib`
#使用其它方式实现加法运算
ic=$[$ia+$ib]
echo $ic
id=$(($ia+$ib))
echo $id
