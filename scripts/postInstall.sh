set env vars
set -o allexport; source .env; set +o allexport;

sleep 20s;

# sed -i 's@location / {@location / {\n\nsub_filter "http://"  "https://";\nsub_filter_once off;\n\n@g' /opt/elestio/nginx/conf.d/${CI_CD_DOMAIN}.conf
sed -i 's@proxy_pass http://@proxy_pass https://@g' /opt/elestio/nginx/conf.d/${CI_CD_DOMAIN}.conf

docker exec elestio-nginx nginx -s reload;