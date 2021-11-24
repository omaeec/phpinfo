# phpinfo

## DOWNLOAD THE APPLICATION REPOSITORY
```
git clone https://github.com/academiaonline/phpinfo
cd phpinfo
git checkout main
```
## DECLARE ENVIRONMENT VARIABLES
```
CMD='-f src/index.php -S 0.0.0.0:8080'
ENTRYPOINT=/usr/bin/php
IMAGE=phpinfo:latest
```
## RUN THE APPLICATION WITHOUT CONTAINERS
```
${ENTRYPOINT} ${CMD}
```
```
curl localhost:8080/src/index.php
```
## RUN THE APPLICATION INSIDE A CONTAINER
```
docker build -t ${IMAGE} .
```
```
docker run -d --entrypoint ${ENTRYPOINT} --name phpinfo --restart always -p 8080:8080 -v ${PWD}/src/index.php:/src/index.php:ro ${IMAGE} ${CMD}
```
