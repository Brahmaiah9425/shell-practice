#!/bin/bash

DATE=$(date +%F)

SCRIPT_NAME=$0

LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"

G="\e[32m"

N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
     then
        echo  -e "$2   ---- $R FAILURE $N"
     else
        echo -e   "$2  ---  $G  SUCCESS $N"
    fi   
}



     



USERID=$(id -u)


if [ $USERID -ne 0]
then
    echo " your not root user"
    exit 1
else
    echo "you are root user please proceed for installation "  

fi


yum install nginx -y &>>$LOGFILE

VALIDATE $? "installing nginx"


yum install mysql -y &>>$LOGFILE

VALIDATE $? "insalling mysql"

yum install posddtfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"






