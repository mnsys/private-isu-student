include .env

build:
	cd webapp/golang/ && go build -o app

push:
	ssh isucon@${WEB_2_IP} "sudo systemctl stop isu-go"
	scp webapp/golang/app isucon@${WEB_2_IP}:/home/isucon/private_isu/webapp/golang/app
	ssh isucon@${WEB_2_IP} "sudo systemctl start isu-go"
