#!/bin/bash

DOT_SCRIPTS_LIST()
{
  local results=""
  for script_name in $(ls -1 $1 )
	do
    node=${script_name//.sh/}
    node=${node//-/_}
    
    results="${results}${node}[label=\"${script_name}\";];"
	done
	echo $results
}

CORE_SCRIPTS_LIST=$(DOT_SCRIPTS_LIST "inst-min-*.sh")

CORE_DOT=$(cat <<EOF
  subgraph cluster_core {
    label = "Core: Minimum with X Server";
    style=filled;
    color=lightgrey;
    node [shape=rectangle, style=filled,color=white];
    ${CORE_SCRIPTS_LIST}
  }
EOF
)

STD_SCRIPTS_LIST=$(DOT_SCRIPTS_LIST "inst-std-*.sh")
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

echo "${CORE_DOT}"
echo "${STD_DOT}"

# Generating graph
GRAPH_DOT=$(cat <<EOF
digraph G {
	graph [
          label="Show general attributes\n that can be used",
        ];
  node    [shape=rectangle, style=filled, fontname="Courier"];
  edge    [color=blue];
 
  ${CORE_DOT}
  ${STD_DOT}
  
  cluster_core->cluster_std;
  
}
EOF
)

echo "${GRAPH_DOT}" > Input.dot
dot -Tpng -o Output.png Input.dot