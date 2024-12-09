FROM node:16.20.2
RUN apt-get update -y
RUN apt-get upgrade -y
COPY . /root/app
RUN npm install -g pm2@latest ts-node nodemon bun
RUN chmod -R 777 /root/app/scripts/nodeModules.sh /root/app/scripts/startAll.sh
RUN /root/app/scripts/nodeModules.sh
EXPOSE 3030
EXPOSE 3004
EXPOSE 3000
