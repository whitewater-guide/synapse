Docker image of synapse with baked-in configuration

## Environment variables

| Variable                   | Required                               | Description                                                                                                                                                |
| -------------------------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| POSTGRES_PASSWORD          | Yes                                    | Postgres db password                                                                                                                                       |
| POSTGRES_DATABASE          | defaults to `synapse`                  | Postgres database                                                                                                                                          |
| POSTGRES_USER              | defaults to `postgres`                 | Postgres user                                                                                                                                              |
| POSTGRES_HOST              | defaults to `db.local`                 | Postgres host                                                                                                                                              |
| POSTGRES_PORT              | defaults to `5432`                     | Postgres port                                                                                                                                              |
| REGISTRATION_SHARED_SECRET | Yes                                    | Synapse [registration_shared_secret](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#registration_shared_secret) |
| MACAROON_SECRET_KEY        | Yes                                    | Synapse [macaroon_secret_key](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#macaroon_secret_key)               |
| FORM_SECRET                | Yes                                    | Synapse [form_secret](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#form_secret)                               |
| JWT_SECRET                 | Yes                                    | Synapse [JWT secret](https://matrix-org.github.io/synapse/latest/jwt.html)                                                                                 |
| SIGNING_KEY                | Yes                                    | Content of synapse [signing_key_path](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#signing_key_path) file     |
| SERVER_NAME                | defaults to `whitewater.guide`         | Synapse [server name](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#server_name)                               |
| PUBLIC_BASEURL             | defaults to `synapse.whitewater.guide` | Synapse [public baseurl](https://matrix-org.github.io/synapse/latest/usage/configuration/config_documentation.html#public_baseurl)                         |
