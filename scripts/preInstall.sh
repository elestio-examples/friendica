set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./db
mkdir -p ./friendica