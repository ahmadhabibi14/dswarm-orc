## Learning Docker Swarm

```bash
# Initialize Docker Swarm mode
docker swarm init  --advertise-addr=127.0.0.1
docker swarm join-token worker
docker swarm join-token manager
```

```bash
# Create a service
# published untuk yang di expose ke luar
# target berasal dari port di container
docker service create \
  --name web-api \
  --replicas 2 \
  --publish published=3000,target=3000 \
  webapi:latest

docker service ls
docker service scale web-api_webapi=2
```

```bash
docker service inspect web-api
docker service inspect web-api --format '{{.Spec.Mode.Replicated.Replicas}}'
```

```bash
docker stats --no-stream --format "{{.CPUPerc}}"
```

```bash
docker service create --name registry --publish published=5000,target=5000 registry:2

docker compose up -d --build
docker compose push
```

```bash
docker stack deploy --compose-file=compose.yaml web-api
docker stack ls

netstat -plnt
```

```bash
docker build -t webapi:latest .
```

### Meninggalkan Docker Swarm

```bash
docker swarm leave --force
```

### Auto scaling

Run this script periodically via a cronjob (say once every hour). To do that, execute the following command to open the crontab config file in your text editor:

```bash 
crontab -e
0 * * * * sh autoscaler.sh
```

### Referensi

- https://docs.docker.com/engine/swarm/
- https://betterstack.com/community/guides/scaling-docker/horizontally-scaling-swarm/
