docker rm -f test
docker build -t test .
docker run --rm -it -d --name test test
docker exec -it test /bin/bash
