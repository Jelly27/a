#!/bin/bash
# 适用于WSL 2 Ubuntu 22.04

# 替换apt镜像源地址，北外源
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo sed -i "s@http://.*archive.ubuntu.com@https://mirrors.bfsu.edu.cn@g" /etc/apt/sources.list
sudo sed -i "s@http://.*security.ubuntu.com@https://mirrors.bfsu.edu.cn@g" /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y

# 下载安装miniconda
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh -b
# source miniconda3/bin/activate
# conda init

# 替换pypi和conda镜像源地址
# python -m pip install -i https://mirrors.bfsu.edu.cn/pypi/web/simple --upgrade pip
# pip config set global.index-url https://mirrors.bfsu.edu.cn/pypi/web/simple
# echo "channels:
#   - defaults
# show_channel_urls: true
# default_channels:
#   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/main
#   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/r
#   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/msys2
# custom_channels:
#   conda-forge: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   msys2: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   bioconda: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   menpo: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   pytorch: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   pytorch-lts: https://mirrors.bfsu.edu.cn/anaconda/cloud
#   simpleitk: https://mirrors.bfsu.edu.cn/anaconda/cloud" > .condarc
# conda clean -i -y

# 下载NVIDIA驱动
# wget https://cn.download.nvidia.com/XFree86/Linux-x86_64/525.85.05/NVIDIA-Linux-x86_64-525.85.05.run

# sh NVIDIA-Linux-x86_64-525.85.05.run

# 安装pytorch 11.7 cuda
# pip3 install torch torchvision torchaudio