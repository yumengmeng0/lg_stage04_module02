#!/bin/bash

#定义一个变量负责记录累加和
sum=0

#使用for循环计算1 ~ 100之间的累加和并记录到上述变量中
for(( i=1;i<=100;i++ ))
do
   sum=$[$sum+$i]
done

#打印变量的数值
echo $sum
