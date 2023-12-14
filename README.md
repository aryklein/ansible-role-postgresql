# Ansible Role for PostgreSQL Cluster Deployment

This Ansible role is designed to streamline the deployment of a PostgreSQL
cluster. It leverages `repmgr` for replication and cluster management, focusing
on ease of use and high configurability. This role enables the setup of a
primary-replica replication architecture in PostgreSQL environments.

## Prerequisites

This role was tested with:

- Ansible version 2.9 or later.
- PostgreSQL version 14 and 15.

## Configuration Variables

To deploy your PostgreSQL cluster using this role, you will need to define
specific variables. The primary node must be identified at the beginning of the
cluster deployment.

### Primary Node Variable

```bash
pg_node_primary: "<primary_node_hostname>"
```

For a comprehensive list of all supported variables, please refer to the
`defaults/main.yml` file in the role directory.

## Installation

1. Clone the repository or download the role.
2. Include the role in your Ansible playbook.
3. Configure the necessary variables as per your cluster requirements.

## Roadmap (TODO)

- [ ] Implement Pgbouncer support for connection pooling.
- [ ] Enable attaching replicas to an existing running cluster.

## Contributing

Contributions to this project are welcome. Please submit pull requests or open
issues for suggestions and feature requests.

## License

MIT
