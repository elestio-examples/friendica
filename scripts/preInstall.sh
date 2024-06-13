set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./db
mkdir -p ./friendica

sed -i "s~DOMAIN_TO_CHANGE~${CI_CD_DOMAIN}:${IP}~g" ./docker-compose.yml