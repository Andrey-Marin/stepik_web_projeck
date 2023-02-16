# Web проект Stepik
 
   
Для публикации кода на github:

    git add .
    git commit -m 'test complete'
    git push
    
Клонирование кода с github куда либо:

    git clone https://github.com/Andrey-Marin/stepik_web_projeck.git /home/box/web
    cd web/
    ./init.sh

Для отработки кода на локальной машине развернут контейнер с такой же файловой структуройб как и в учебном терминале. [Dockerfile](./Dockerfile) и [docker-compose.yml](./docker-compose.yml).

Создание образа и запуск контейнераЖ

    docker-compose build

    docker-compose up -d

Перезапуск контейнера:

    docker-compose restart

Вход в контейнер:

    docker exet -it <name_container> bash
