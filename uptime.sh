docker run -d \
-p 3001:3001 \
-v /home/<user>/uptime-kuma:/app/data \
--name uptime-kuma \
--network rvrsprxy \
--restart=always \
louislam/uptime-kuma:1
