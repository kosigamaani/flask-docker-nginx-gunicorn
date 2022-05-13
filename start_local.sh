source ~/envs/py38/bin/activate

gunicorn -w 1 -b 0.0.0.0:8000 wsgi:app