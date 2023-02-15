# Stepic web project
 
   
For submitting code to github:

    git add .
    git commit -m 'test complete'
    git push
    
To boot into the virtual machine and run initialization:

    git clone https://github.com/Andrey-Marin/stepik_web_projeck.git /home/box/web
    cd web/
    ./init.sh

Prepaire [Dockerfile](./Dockerfile) and [docker-compose.yml](./docker-compose.yml) for doing exirsice in the container with nginx.

    docker-compose build

    docker-compose up -d

Restart containers:

    docker-compose restart
