#!/usr/bin/env bash

set -x

SERVICE_NAME="web-api"
CPU_THRESHOLD="80%"
SCALE_UP_COUNT=1
SCALE_DOWN_COUNT=1
MIN_REPLICAS=2

while true; do
  