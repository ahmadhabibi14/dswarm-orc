#!/usr/bin/env bash

set -x

service_name=web-api_webapi

# 1
## let's see how many workers we have, by listing and counting all
## node IDs corresponding to the workers in the cluster
num_workers=$(docker node ls --filter role=worker -q | wc -l)

# 2
## then, let's infer the current number of replicas our service has
num_replicas=$(docker service inspect $service_name --format '{{json .Spec.Mode.Replicated.Replicas}}')

# 3
## let's then assess how many replicas we should have (2 per node)
let "target_replicas = 2*$num_workers"

# 4
## and finally, let's compare the target replicas
## with the ones we currently have, and if they are different
## we scale the service to the number of target_replicas
if [[ $num_replicas -ne $target_replicas ]]
then
  echo "Autoscaling Docker service ${service_name} to ${target_replicas} replicas"
  docker service scale $service_name=$target_replicas -d
fi

## else, there's nothing to do since we already have
## the desired amount of replicas
