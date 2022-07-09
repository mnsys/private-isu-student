include .env

build:
	cd webapp/golang/ && make

push:
	scp webapp/golang/app user@remoteHost:/home/user/tmp/