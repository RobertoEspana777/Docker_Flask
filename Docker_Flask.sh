#!/bin/bash

docker pull robertoorfeo22/flaskdocker1
docker run -d -p 1018:1018 --name flaskdocker1 robertoorfeo22/flaskdocker1
docker logs -f flaskdocker1
