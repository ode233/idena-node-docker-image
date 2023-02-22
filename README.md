# idena-node-docker-image

Build locally

```
docker build --tag idena .
docker run -d -p 9009:9009 -v /root/idena/datadir:/datadir --name idena --restart=always idena
```

Or use image form [dockerhub](https://hub.docker.com/r/ode233/idena-node)

```
docker pull ode233/idena-node
docker run -d -p 9009:9009 -v /root/idena/datadir:/datadir --name idena --restart=always ode233/idena-node
```
