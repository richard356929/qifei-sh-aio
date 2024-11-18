#!/bin/bash

# 定义备份Halo博客的函数
backup_halo_blog() {
    echo -e "\n开始备份Halo博客..."
}

while true; do
    clear
    echo "==========================="
    echo "        功能菜单           "
    echo "==========================="
    echo "1. 查看系统信息"
    echo "2. 备份Halo博客"
    echo "0. 退出"
    echo "==========================="
    read -p "请选择功能 (0-5): " choice

    case $choice in
        1)
            echo -e "\n系统信息:"
            uname -a
            read -p "按回车键继续..."
            ;;
        2)
            backup_halo_blog
            read -p "按回车键继续..."
            ;;
        0)
            echo "感谢使用，再见！"
            exit 0
            ;;
        *)
            echo "无效选择，请重试..."
            sleep 2
            ;;
    esac
done






