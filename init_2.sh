sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo rm -rf /etc/gunicorn.d/gunicorn.conf.py
sudo ln -s /home/box/web/etc/gunicorn.conf.py /etc/gunicorn.d/gunicorn.conf.py
sudo mkdir -p /home/box/web/{log,pid}/
sudo touch /home/box/web/log/{gunicorn_access.log,gunicorn_error.log}
sudo touch /home/box/web/pid/gupid.pid
gunicorn -c /etc/gunicorn.d/gunicorn.conf.py hello:app --bind 0.0.0.0:8080 &
# sudo gunicorn -c /etc/gunicorn.d/gunicorn.conf.py ~/web/ask/ask.wsgi:application --bind 0.0.0.0:8000 &
cd ~/web/ask/
sudo gunicorn -c /etc/gunicorn.d/gunicorn.conf.py ask.wsgi:application --bind 0.0.0.0:8000 &


