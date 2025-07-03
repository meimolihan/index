#!/bin/sh

echo
echo ========== 开始部署服务 ==========
docker-compose down
docker compose build
docker-compose up -d
echo ========== 服务部署完成 ==========

echo
echo ========================================
echo "容器端口映射情况："

# 获取主机IPv4地址
HOST_IP=$(hostname -I | awk '{print $1}')

# 遍历所有服务
docker-compose ps --services | while read -r service; do
  echo "服务名称: $service"
  ports=$(docker-compose ps "$service" | grep "$service" | awk '{for(i=1;i<=NF;i++) if($i ~ /->/) print $i}')
  
  if [ -n "$ports" ]; then
    echo "端口映射: $ports"
    echo ========================================
    # 提取主机端口并拼接访问链接
    for port in $ports; do
      # 提取主机端口（如 0.0.0.0:18080->80/tcp 中的 18080）
      host_port=$(echo $port | cut -d'-' -f1 | rev | cut -d':' -f1 | rev)
      if [ -n "$host_port" ]; then
        echo "访问链接: http://$HOST_IP:$host_port"
      fi
    done
  else
    echo "无公开端口映射"
  fi
  echo ========================================
  echo
done
