openssl rand -base64 756 > ./secrets/mongo-keyfile
chmod 400 ./secrets/mongo-keyfile
sudo chown 999:999 ./secrets/mongo-keyfile
