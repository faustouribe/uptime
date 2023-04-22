docker run -d \
-p 3001:3001 \
-v /home/<user>/config/uptime-kuma/data:/app/data \
-v /home/<user>/config/uptime-kuma/app:/app \
--name uptime-kuma \
--network proxy \
--restart=always \
louislam/uptime-kuma:1
