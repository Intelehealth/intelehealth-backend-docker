#!/bin/bash
mkdir /root/app/.pem
cd /root/app/.pem
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -in private_key.pem -pubout -out public_key.pem
openssl req -new -x509 -key private_key.pem -out fullchain.pem -days 365 -subj "/C=US/ST=California/L=San Francisco/O=MyOrganization/OU=MyUnit/CN=localhost"

cp -r /root/app/.pem /root/app/auth-gateway/.pem
cp -r /root/app/.pem /root/app/portal/.pem
cp -r /root/app/.pem /root/app/web-rtc/.pem

cp /root/app/envs/authEnv  /root/app/auth-gateway/.env
cp /root/app/envs/portalEnv /root/app/portal/.env
cp /root/app/envs/webrtcEnv /root/app/web-rtc/.env

cd /root/app
echo "packages installing for backend-service"
npm install

echo "packages installing for auth-gateway"
cd /root/app/auth-gateway
npm install

echo "packages installing for portal"
cd /root/app/portal
npm install

echo "packages installing for web-rtc"
cd /root/app/web-rtc
npm install