#!/bin/bash
cd /root/app/auth-gateway
pm2 start /root/app/auth-gateway/bin/www --name=auth-gateway
cd /root/app/portal
pm2 start bin/www --name=Portal
cd /root/app/web-rtc 
pm2 start src/index.ts --name=webrtc-ms