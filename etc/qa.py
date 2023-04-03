# gunicorn configuration file for "qa" django application

pythonpath = '/home/box/web/ask/' # path for default django-application
bind = "0.0.0.0:8000"
workers = 4
