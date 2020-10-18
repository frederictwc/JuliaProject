docker stop julia
docker rm julia
docker rmi julia
docker build -t julia .
docker run --gpus all -d \
-v $(pwd):/home \
--name julia \
-it julia
docker exec -it julia sh