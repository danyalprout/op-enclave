#!/bin/bash

echo "$L2_ENGINE_JWT" > /tmp/engine.jwt

if [[ $POD_NAME == *-0 ]]; then
  echo "Leader pod"
  export OP_NODE_SEQUENCER_ENABLED=true
fi

exec ./op-node \
  --l2.jwt-secret=/tmp/engine.jwt
