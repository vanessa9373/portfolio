# Enterprise Cloud Migration — On-Prem to AWS

![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![ECS](https://img.shields.io/badge/ECS_Fargate-FF9900?style=flat&logo=amazonecs&logoColor=white)

## Table of Contents
- [Overview](#overview)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Step-by-Step Deployment](#step-by-step-deployment)
- [Project Structure](#project-structure)
- [Technologies](#technologies)
- [Key Results](#key-results)
- [Lessons Learned](#lessons-learned)
- [Author](#author)

## Overview

Led the end-to-end migration of a client's legacy on-premises infrastructure to AWS. The project involved re-architecting a monolithic Java/Node.js application into containerized microservices running on ECS Fargate, with a managed Aurora PostgreSQL database replacing the on-prem Oracle instance.

**Problem:** Client was running aging on-prem servers with 94% uptime, high maintenance costs, 2-week provisioning cycles, and no disaster recovery.

**Solution:** Designed a cloud-native architecture on AWS using ECS Fargate for compute, Aurora for data, and ALB for traffic management — all provisioned via Terraform.

## Architecture

```
                         ┌─────────────────────────────────────────────┐
                         │              AWS Cloud (us-west-2)          │
                         │                                             │
 Users ──► Route 53 ──►  │  ┌─────────┐    ┌──────────────────────┐   │
                         │  │   ALB   │───►│  ECS Fargate Cluster  │   │
                         │  │ (Public) │    │  ┌────┐ ┌────┐ ┌────┐│   │
                         │  └─────────┘    │  │Svc1│ │Svc2│ │Svc3││   │
                         │                 │  └────┘ └────┘ └────┘│   │
                         │  ┌──────────┐   └──────────────────────┘   │
                         │  │CloudWatch│                               │
                         │  │ Logging  │   ┌──────────────────────┐   │
                         │  └──────────┘   │  Private Subnet       │   │
                         │                 │  ┌──────────────────┐ │   │
                         │                 │  │  Aurora PostgreSQL│ │   │
                         │                 │  │  (Multi-AZ)      │ │   │
                         │                 │  └──────────────────┘ │   │
                         │                 └──────────────────────┘   │
                         └─────────────────────────────────────────────┘

 VPC: 10.0.0.0/16
 ├── Public Subnet AZ-a:  10.0.1.0/24  (ALB, NAT GW)
 ├── Public Subnet AZ-b:  10.0.2.0/24  (ALB, NAT GW)
 ├── Private Subnet AZ-a: 10.0.10.0/24 (ECS Tasks, RDS)
 └── Private Subnet AZ-b: 10.0.20.0/24 (ECS Tasks, RDS)
```

## Prerequisites

- AWS CLI v2 configured with appropriate credentials
- Terraform >= 1.5.0
- Docker >= 24.0
- An AWS account with permissions for VPC, ECS, RDS, ALB, IAM

## Step-by-Step Deployment

### Step 1: Clone and Configure

```bash
git clone https://github.com/vanessa9373/portfolio.git
cd portfolio/projects/01-cloud-migration
cp terraform/terraform.tfvars.example terraform/terraform.tfvars
# Edit terraform.tfvars with your values
```

### Step 2: Initialize Terraform

```bash
cd terraform
terraform init
terraform plan -out=tfplan
```

### Step 3: Deploy Network Layer

```bash
terraform apply tfplan
```

This creates: VPC, subnets, internet gateway, NAT gateways, route tables, and security groups.

### Step 4: Build and Push Docker Image

```bash
cd ../docker
docker build -t migration-app:latest .
# Tag and push to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.us-west-2.amazonaws.com
docker tag migration-app:latest <ACCOUNT_ID>.dkr.ecr.us-west-2.amazonaws.com/migration-app:latest
docker push <ACCOUNT_ID>.dkr.ecr.us-west-2.amazonaws.com/migration-app:latest
```

### Step 5: Deploy ECS Services

The Terraform code provisions the ECS cluster, task definitions, and services automatically. After the Docker image is pushed:

```bash
cd ../terraform
terraform apply -target=aws_ecs_service.app
```

### Step 6: Verify Deployment

```bash
# Get ALB DNS name
terraform output alb_dns_name

# Test the endpoint
curl -I http://$(terraform output -raw alb_dns_name)
```

### Step 7: Configure DNS

Point your domain to the ALB using Route 53 or your DNS provider.

### Step 8: Enable Monitoring

CloudWatch dashboards and alarms are provisioned automatically. Verify in the AWS Console.

## Project Structure

```
01-cloud-migration/
├── README.md
├── terraform/
│   ├── main.tf              # Core infrastructure (VPC, ECS, RDS, ALB)
│   ├── variables.tf          # Input variables
│   └── outputs.tf            # Output values
├── docker/
│   ├── Dockerfile            # Multi-stage build for app
│   └── docker-compose.yml    # Local development setup
└── docs/
    ├── migration-plan.md     # 4-phase migration plan
    └── architecture.md       # Architecture decision record
```

## Technologies

| Technology | Purpose |
|-----------|---------|
| AWS VPC | Network isolation with public/private subnets |
| ECS Fargate | Serverless container orchestration |
| Aurora PostgreSQL | Managed database with Multi-AZ failover |
| Application Load Balancer | HTTPS termination and traffic routing |
| Terraform | Infrastructure as Code provisioning |
| Docker | Application containerization |
| CloudWatch | Logging, metrics, and alarms |
| ECR | Container image registry |

## Key Results

| Metric | Before (On-Prem) | After (AWS) | Improvement |
|--------|------------------|-------------|-------------|
| Monthly Infra Cost | $45,000 | $29,250 | **35% reduction** |
| Uptime | 94% | 99.95% | **+5.95%** |
| Provisioning Time | 2 weeks | 30 minutes | **98% faster** |
| Disaster Recovery | None | Multi-AZ automated | **Full DR** |
| Deployment Frequency | Monthly | Daily | **30x faster** |

## Lessons Learned

1. **Start with the database migration** — it's the highest-risk component and needs the most testing time
2. **Use AWS DMS for data migration** — avoids downtime and handles ongoing replication during cutover
3. **Right-size from day one** — Fargate makes it easy to adjust CPU/memory without over-provisioning
4. **Invest in IaC early** — Terraform paid dividends when we needed to replicate staging environments
5. **Plan the cutover window carefully** — DNS TTL changes need to propagate; lower TTLs 48 hours before

## Author

**Jenella V.** — Solutions Architect & Cloud Engineer
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/)
- [GitHub](https://github.com/vanessa9373)
- [Portfolio](https://vanessa9373.github.io/portfolio/)
