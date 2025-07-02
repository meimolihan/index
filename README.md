## 一键部署脚本

### 1 、Github 仓库脚本

```bash
mkdir -p /vol1/1000/home/nginx-file-server && \
cd /vol1/1000/home/nginx-file-server && \
bash -c "$(curl -fsSL https://nginx-file.meimolihan.eu.org/init.sh)"
```

### 2 、Gitee 仓库脚本

```bash
mkdir -p /vol1/1000/home/nginx-file-server && \
cd /vol1/1000/home/nginx-file-server && \
bash -c "$(curl -fsSL https://gitee.com/meimolihan/index/raw/master/init.sh)"
```

> 适用平台：x86-64 / ARM64 / Docker环境的所有设备
