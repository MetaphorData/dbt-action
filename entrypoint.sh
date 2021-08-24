#!/bin/sh

set -e -x

cat << EOF > dbt.yaml
manifest: "/github/workspace/$1"
catalog: "/github/workspace/$2"
output:
  file:
    path: "$3"
EOF

python -m metaphor.dbt dbt.yaml
