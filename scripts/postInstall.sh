set env vars
set -o allexport; source .env; set +o allexport;

sleep 20s;

sed -i 's@location / {@location / {\n\nsub_filter "http://"  "https://";\nsub_filter_once off;\n\n@g' /opt/elestio/nginx/conf.d/${DOMAIN}.conf

docker exec elestio-nginx nginx -s reload;