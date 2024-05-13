# git pull
# yarn run build
# pm2 delete "6ammart-web-next-js-dev"
# pm2 start npm --name "6ammart-web-next-js-dev" -- start

yarn run build
scp -i misterd.pem  -r .next ubuntu@ec2-16-16-104-192.eu-north-1.compute.amazonaws.com:/home/ubuntu/misterd


pm2 start "yarn start" 

pm2 startup

pm2 save