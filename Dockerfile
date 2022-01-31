FROM python:3.7

RUN pip install "metaphor-connectors[dbt]~=0.10.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
