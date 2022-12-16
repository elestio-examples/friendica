set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./db
mkdir -p ./friendica
# chown -R 1000:1000 ./data
