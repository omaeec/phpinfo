# phpinfo

```
git clone https://github.com/javier2577sg/phpinfo
cd phpinfo
git checkout main
```
```
php -f src/index.php -S 0.0.0.0:8080
```
```
curl localhost:8080/src/index.php
```
Instrucciones para construir imagen docker
```
git checkout santander
docker build --file Dockerfile --tag javier2577/phpinfo:santander .
```
docker run -d --entrypoint /usr/bin/php --name phpinfo -p 8080:8080 -v ${PWD}/src/index.php:/src/index.php:ro javier2577/phpinfo:santander -f src/index.php -S 0.0.0.0:8080
