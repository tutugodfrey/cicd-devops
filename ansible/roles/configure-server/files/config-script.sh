#! /bin/bash

# Export environment variables
export ENVIRONMENT=production
export TYPEORM_CONNECTION=postgres
export TYPEORM_ENTITIES=./src/modules/domain/**/*.entity.ts
export TYPEORM_HOST=
export TYPEORM_PORT=5532
export TYPEORM_ENTITIES=
export TYPEORM_USERNAME=TYPEORM_USERNAME
export TYPEORM_PASSWORD=TYPEORM_DB_PASSWORD
export TYPEORM_DATABASE=

apt install -y gcc-c++ make;
curl -sL https://rpm.nodesource.com/setup_15.x | sudo -E bash -;
apt install nodejs -y;

sudo npm install pm2 -g
