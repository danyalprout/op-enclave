#!/bin/bash

if [[ $POD_NAME == *-0 ]]; then
  echo "Leader pod"
  export OP_NODE_SEQUENCER_ENABLED=true
fi

exec ./op-node