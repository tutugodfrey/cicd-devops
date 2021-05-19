#! /bin/bash

apt update -y;
# Export environment variables
export ENVIRONMENT=production
export TYPEORM_CONNECTION=postgres
export TYPEORM_ENTITIES=./src/modules/domain/**/*.entity.ts
export TYPEORM_HOST=
export TYPEORM_PORT=5532
export TYPEORM_ENTITIES=
export TYPEORM_USERNAME=TYPEORM_USERNAME
export TYPEORM_PASSWORD=${TYPEORM_PASSWORD}
export TYPEORM_DATABASE=

apt install -y gcc make;
cd ~
# curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
curl -sL https://deb.nodesource.com/setup_15.x -o nodesource_setup.sh
bash nodesource_setup.sh

apt install nodejs -y;

npm install pm2 -g