which python
service nginx start
service nginx status
echo "Starting GUNICORN !"
gunicorn -b "0.0.0.0:8000" -w 1 wsgi:app