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
# Autoscaling
docker stack deploy -c autoscaler.yaml autoscaler
```