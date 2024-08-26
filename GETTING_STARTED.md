# Getting Started

## Init

```bash
make init
```

## Running Locally

```bash
make run
```

## Deploying infrastructure
Use terraform to create the infrastructure for the project

```sh
cd infra
terraform init
terraform apply
```

You'll then have to edit the github repository pages settings to use the new subdomain
