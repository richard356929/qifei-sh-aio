#!/bin/bash

while true; do
    clear
    echo "==========================="
    echo "        功能菜单           "
    echo "==========================="
    echo "1. 查看系统信息"
    echo "2. 查看磁盘使用情况" 
    echo "3. 查看内存使用情况"
    echo "4. 查看进程信息"
    echo "5. 查看网络连接"
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
            echo -e "\n磁盘使用情况:"
            df -h
            read -p "按回车键继续..."
            ;;
        3)
            echo -e "\n内存使用情况:"
            free -h
            read -p "按回车键继续..."
            ;;
        4)
            echo -e "\n进程信息:"
            ps aux | head -n 10
            read -p "按回车键继续..."
            ;;
        5)
            echo -e "\n网络连接:"
            netstat -tuln
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
