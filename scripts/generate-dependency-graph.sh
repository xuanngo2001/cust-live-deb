#!/bin/bash

CORE_SCRIPTS_LIST=$(ls -1 inst-min-*.sh)
CORE_DOT=$(cat <<EOF
  subgraph cluster_core {
    label = "Core: Minimum with X Server";
    style=filled;
    color=lightgrey;
    node [shape=rectangle, style=filled,color=white];
    ${CORE}
  }
EOF
)

STD_SCRIPTS_LIST=$(ls -1 inst-std-*.sh)
STD_DOT=$(cat <<EOF
  subgraph cluster_std {
    label = "Standard: Window system with normally used applications";
    style=filled;
    color=lightgrey;
    node [shape=rectangle, style=filled,color=white];
    ${STD_SCRIPTS_LIST}
  }
EOF
)

echo ${CORE_DOT}
echo ${STD_DOT}
