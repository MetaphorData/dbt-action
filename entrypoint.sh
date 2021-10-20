#!/bin/sh

set -e -x

cat << EOF > dbt.yaml
manifest: "/github/workspace/$1"
catalog: "/github/workspace/$2"
account: "$3"
output:
  file:
    path: "$4"
projectSourceUrl: "$5"
docsBaseUrl: "$6"
EOF

python -m metaphor.dbt dbt.yaml
