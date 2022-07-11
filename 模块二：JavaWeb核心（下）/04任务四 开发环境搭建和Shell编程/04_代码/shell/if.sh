#!/bin/bash

#定义一个变量用于描述考试成绩
score=60
echo $score

#使用if判断给出及格或者不及格的提示信息
if [ $score -gt 60 ]
then 
   echo "恭喜您考试通过了!"
elif [ $score -eq 60 ]; then
   echo "60分万岁，多一分浪费！"
else 
   echo "下学期来补考吧！"
fi
