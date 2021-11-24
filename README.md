# phpinfo

## DOWNLOAD THE APPLICATION REPOSITORY
```
git clone https://github.com/academiaonline/phpinfo
cd phpinfo
git checkout main
```
## DECLARE ENVIRONMENT VARIABLES
```
CMD='-f index.php -S 0.0.0.0:8080'
ENTRYPOINT=/usr/bin/php
IMAGE=phpinfo:latest
```
## RUN THE APPLICATION WITHOUT CONTAINERS
```
cd src/
${ENTRYPOINT} ${CMD}
```
```
curl localhost:8080/index.php
```
## RUN THE APPLICATION INSIDE A CONTAINER
```
git checkout 2021-11-axia
```
```
docker build -t ${IMAGE} .
```
```
docker run -d --entrypoint ${ENTRYPOINT} --name phpinfo --read-only --restart always -p 8080:8080 -u nobody -v ${PWD}/src/index.php:/src/index.php:ro -w /src/ ${IMAGE} ${CMD}
```
## RUN THE APPLICATION INSIDE A CONTAINER WITHOUT A VOLUME
```
git checkout 2021-11-axia
```
```
IMAGE=phpinfo:no-volume
```
```
docker build -f Dockerfile-no-volume -t ${IMAGE} src/
```
```
docker run -d --entrypoint ${ENTRYPOINT} --name phpinfo --read-only --restart always -p 8080:8080 -u nobody -w /src/ ${IMAGE} ${CMD}
```
