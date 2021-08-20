#!/bin/sh

set -e -x

cat << EOF > dbt.json
{
  "manifest": "/github/workspace/$1",
  "catalog": "/github/workspace/$2",
  "output": {
    "file": {
      "output": "$3"
    }
  }
}
EOF

python -m metaphor.dbt dbt.json
