# Metaphor dbt GitHub Action
A [GitHub Action](https://docs.github.com/en/actions) for publishing dbt metadata to [Metaphor](https://metaphor.io).

# Usage

Add the following to the [GitHub Workflow](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) in your dbt GitHub repository.

```yaml
# Assume you hav a prior job that runs "dbt docs generate"

- uses: MetaphorData/dbt-action@v1
  with:
        manifest: metaphor/target/manifest.json
        catalog: metaphor/target/catalog.json
        account: <account_number>
        s3-path: s3://metaphor-mce-${{ matrix.environment }}/github/dbt.json

    # Path to the manifest.json file generated by the "dbt docs generate" job
    manifest: ''

    # Path to the manifest.json file generated by the "dbt docs generate" job
    catalog: ''

    # The database service account this DBT project is connected to
    account: ''
    
    # S3 URL for the output, in the form of s3://<bucket>/<file_name>.json
    s3-path: ''
```

# License

The scripts and documentation in this project are released under the [Apache V2 License](./LICENSE).
