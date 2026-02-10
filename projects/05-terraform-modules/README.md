# Production-Grade Terraform Module Library

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Go](https://img.shields.io/badge/Terratest-00ADD8?style=flat&logo=go&logoColor=white)

## Overview

A library of reusable, production-grade Terraform modules for VPC, EKS, RDS, and IAM — used across 10+ client engagements for consistent, secure, and repeatable infrastructure deployments.

## Module Catalog

| Module | Description | Version |
|--------|-------------|---------|
| [vpc](./modules/vpc/) | VPC with public/private subnets, NAT, flow logs | v1.0.0 |
| [eks](./modules/eks/) | EKS cluster with managed nodes and IRSA | v1.0.0 |
| [rds](./modules/rds/) | RDS/Aurora with encryption, backups, subnet groups | v1.0.0 |
| [iam](./modules/iam/) | Assumable roles, policies, OIDC providers | v1.0.0 |

## Quick Start

```hcl
module "vpc" {
  source       = "./modules/vpc"
  project_name = "my-app"
  vpc_cidr     = "10.0.0.0/16"
  az_count     = 2
}

module "eks" {
  source       = "./modules/eks"
  project_name = "my-app"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids
}
```

See [examples/complete](./examples/complete/) for a full working example.

## Key Results

| Metric | Result |
|--------|--------|
| Clients Using Modules | **10+** |
| Provisioning Time Reduction | **80%** |
| Modules Built | **15** |
| Test Coverage | **Terratest for all modules** |

## Author

**Jenella V.** — Solutions Architect
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
