## Learning Docker Swarm

```bash
# Initialize Docker Swarm mode
docker swarm init  --advertise-addr=127.0.0.1
```

```bash
# Create a service
docker service create \
  --name web-api \
  --replicas 2 \
  --publish published=3000,target=3000 \
  webapi:latest

docker service ls
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
docker stack deploy -c compose.yaml web-api
```