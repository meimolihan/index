## 一 、安装 `wget`

```bash
sudo apt update && \
sudo apt install -y wget && \
wget --version | head -1
```

![](https://file.meimolihan.eu.org/gif/gif-011.gif)

## 二 、下载文件命令

### 1 、`Linux` 下载命令（`保持原文件名`）

> `-c`：断点续传

```bash
wget -c https://gitee.com/meimolihan/script/raw/master/sh/zip/backup-zip.sh
```

### 2 、`Linux` 下载文件命令（`指定路径+重命名`）

> `-c`：断点续传
> `-O`：将输出保存到文件

```bash
wget -c -O /mnt/test.sh https://gitee.com/meimolihan/script/raw/master/sh/zip/backup-zip.sh
```

![](https://file.meimolihan.eu.org/gif/gif-011.gif)

## Linux 下载文件夹命令

### 下载文件夹到当前目录

> 用于递归下载指定URL的内容，断点续传且不创建层级目录，从第3层目录开始保存文件。

```bash
wget -c -r -np -nH --cut-dirs=2 https://nginx-file.mobufan.eu.org:666/file/blog/img/
```

### 下载文件夹到指定目录

> 用于将指定URL的内容递归下载到/mnt/test目录，支持断点续传，不创建层级目录和主机目录，从第3层目录开始保存文件。

```bash
wget -c -r -np -nH -P /mnt/test --cut-dirs=2 https://nginx-file.mobufan.eu.org:666/file/blog/img/
```
