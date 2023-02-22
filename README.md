# idena-node-docker-image

docker build --tag idena .
docker run --network host --volume ~/.idena/datadir:/home/datadir idena --fast
