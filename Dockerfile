FROM python:3.8-alpine

ENV PYTHONDONTWRITEBYTECODE 1

RUN pwd

RUN ls -lrt

WORKDIR /app

RUN pwd

COPY src src

RUN mv src flask_app

RUN ls -lrt

WORKDIR /app/flask_app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD [ "gunicorn", "-w", "1", "-b", "0.0.0.0:8000", "wsgi:app"]
