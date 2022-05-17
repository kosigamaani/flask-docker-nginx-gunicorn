# flask-docker-nginx-gunicorn

DOCKER Commands
================

1) Once project setup is complete, run below command to 
    build the directory containing docker file

  >>  docker image build --progress=plain -t flask-nginx-uni .

2) Next step is to start the container.

  >> docker run -p 80:80 -d flask-nginx-uni