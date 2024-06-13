# set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for Friendica to be ready..."
sleep 30s;


sed -i "s@'ssl_policy' => 2,@'ssl_policy' => 1,@g" ./friendica/config/local.config.php

