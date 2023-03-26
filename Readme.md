# Web проект Stepik
 
   
Для публикации кода на github:

    git add .
    git commit -m 'test complete'
    git push
    
Клонирование кода с github в рабочую директорию:

    git clone https://github.com/Andrey-Marin/stepik_web_projeck.git /home/box/web
    
Задание прав на исполнение файлу [init.sh](./init.sh) и его запуск, код выполняется в директории /home/web/:

    chmod +x init.sh
    ./init.sh
    
Запуск gunicorn с запросом URL с параметрами:

    gunicorn -w 2 -c /home/box/web/etc/hello.py hello:app &\
    curl 'http://127.0.0.1:8080/?a=1&a=2&b=3'

Для отработки кода на локальной машине развернут контейнер с такой же файловой структурой, как и в учебном терминале. [Dockerfile](./Dockerfile) и [docker-compose.yml](./docker-compose.yml).

Создание образа и запуск контейнера:

    docker-compose build

    docker-compose up -d

Перезапуск контейнера:

    docker-compose restart

Вход в контейнер:

    docker exet -it <name_container> bash
