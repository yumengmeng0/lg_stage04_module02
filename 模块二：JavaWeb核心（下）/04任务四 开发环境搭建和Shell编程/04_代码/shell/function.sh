#!/bin/bash

#定义一个函数负责计算两个输入数据的和并打印
function sum()
{
    s=$[$1+$2]
    echo $s
}

#提示用户从键盘输入两个数据
read -p "input num1:" num1
read -p "input num2:" num2

#调用函数
sum $num1 $num2
