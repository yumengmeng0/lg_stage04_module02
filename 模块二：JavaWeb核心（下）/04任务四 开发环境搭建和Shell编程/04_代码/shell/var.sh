#!/bin/bash   
name=zhangfei   #定义一个名字为name的变量初始值为zhangfei，=两边不能有空格
echo $name      #打印变量name的数值
#unset name      #撤销name的定义
echo $name
#show='My Self!$name' #若变量值中有空格则使用单引号或双引号，但双引号中可以取出变量的数值 
show="My Self!$name"  
echo $show
