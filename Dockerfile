FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y python3 && apt install python3-pip -y

ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get install nginx -y

RUN pwd

RUN ls -lrt

WORKDIR /app

RUN pwd

COPY . .

RUN cp project.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/project.conf /etc/nginx/sites-enabled/

RUN rm /etc/nginx/sites-enabled/default

RUN whoami

RUN nginx -t

RUN ls -lrt

RUN pip install -r requirements.txt

RUN chmod 755 *.sh

EXPOSE 80
EXPOSE 8000

CMD [ "sh", "run.sh"]
