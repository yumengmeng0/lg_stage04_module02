#!/bin/bash

#使用while循环实现1 ~ 100之间的累加和
#定义两个变量分别记录累加和与初始值
sum=0
i=1

#使用while循环
while [ $i -le 100 ]
do
   sum=$[$sum+$i]
   i=$[$i+1]
done

#打印结果
echo $sum


