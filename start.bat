docker build --build-arg SERVICE_STATE=dev -t reactphp-skeleton ./docker
docker kill reactphp-skeleton
docker rm reactphp-skeleton
docker run --rm --name reactphp-skeleton -p 8000:443 -p 8090:80 -v ./www:/usr/share/nginx/html reactphp-skeleton /bin/bash