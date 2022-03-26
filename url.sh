#! /usr/bin/sh
ENV_DIR_PATH=~/environment
TMP_DIR_PATH=${ENV_DIR_PATH}/codegym-scripts
REPOSITORY_DIR_PATH=${ENV_DIR_PATH}/codegym-app-security-challenge
ENV_FILE_PATH=${REPOSITORY_DIR_PATH}/.env

ip=`ec2-metadata -v | sed -e 's/public-ipv4: //g'`
echo "WEBサーバを起動しました
アプリケーションURL：http://"${ip}":20580/
phpMyAdminURL：http://"${ip}":20581/"

cat ${ENV_FILE_PATH}
