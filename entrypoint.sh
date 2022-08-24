#!/bin/sh

set -e -x

cat << EOF > dbt.yaml
manifest: "/github/workspace/$1"
catalog: "/github/workspace/$2"
account: "$3"
project_source_url: "$4"
docs_base_url: "$5"
output:
  file:
    directory: "$6"
EOF

echo "Generated dbt.yaml:"
cat dbt.yaml

metaphor dbt dbt.yaml
