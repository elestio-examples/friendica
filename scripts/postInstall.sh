# set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for Friendica to be ready..."
sleep 30s;

sed -i "s~DOMAIN_TO_CHANGE~${CI_CD_DOMAIN}~g" ./docker-compose.yml
sed -i "s~0.0.0.0~${IP}~g" ./docker-compose.yml
sed -i "s@'ssl_policy' => 2,@'ssl_policy' => 1,@g" ./friendica/config/local.config.php

docker-compose down;
docker-compose up -d;

sleep 30s;