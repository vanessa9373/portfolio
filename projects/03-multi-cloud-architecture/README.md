# Multi-Cloud Hybrid Architecture — AWS & Azure

![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0078D4?style=flat&logo=microsoftazure&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)

## Overview

Designed a hybrid multi-cloud architecture spanning AWS and Azure for a financial services client. The solution provides active-active workload distribution, secure cross-cloud connectivity via VPN and ExpressRoute, and meets SOC 2 compliance requirements.

## Architecture

```
  ┌──────────────────────┐          IPsec VPN           ┌──────────────────────┐
  │     AWS (us-west-2)  │◄────────────────────────────►│    Azure (West US)   │
  │                      │                              │                      │
  │  VPC: 10.0.0.0/16   │     Transit Gateway ◄──►     │  VNet: 10.1.0.0/16  │
  │  ┌────────────────┐  │     VPN Gateway              │  ┌────────────────┐  │
  │  │ Public Subnet  │  │                              │  │ Public Subnet  │  │
  │  │  ALB / NAT     │  │                              │  │  App Gateway   │  │
  │  ├────────────────┤  │                              │  ├────────────────┤  │
  │  │ Private Subnet │  │                              │  │ Private Subnet │  │
  │  │  EKS / RDS     │  │                              │  │  AKS / SQL     │  │
  │  └────────────────┘  │                              │  └────────────────┘  │
  └──────────────────────┘                              └──────────────────────┘
              │                                                    │
              └───────────► Route 53 (DNS) ◄──────────────────────┘
                         (Failover Routing)
```

## Prerequisites

- AWS CLI and Azure CLI configured
- Terraform >= 1.5.0
- Accounts on both AWS and Azure with networking permissions

## Step-by-Step Deployment

### Step 1: Deploy AWS Infrastructure
```bash
cd terraform/aws
terraform init && terraform apply
```

### Step 2: Deploy Azure Infrastructure
```bash
cd ../azure
terraform init && terraform apply
```

### Step 3: Establish VPN Connection
The Terraform code creates VPN gateways on both sides. Configure the shared key and verify connectivity:
```bash
# Check VPN tunnel status (AWS)
aws ec2 describe-vpn-connections --query 'VpnConnections[].VgwTelemetry'

# Check VPN gateway status (Azure)
az network vpn-connection show --name aws-vpn-connection -g multi-cloud-rg
```

### Step 4: Verify Cross-Cloud Connectivity
```bash
# From an EC2 instance in AWS, ping an Azure VM
ping 10.1.10.4

# From an Azure VM, ping an AWS instance
ping 10.0.10.4
```

### Step 5: Configure DNS Failover
Route 53 health checks and failover routing are provisioned automatically.

## Key Results

| Metric | Result |
|--------|--------|
| Cloud Providers | AWS + Azure (active-active) |
| Availability | 99.99% (cross-cloud failover) |
| Compliance | SOC 2 Type II certified |
| RTO | < 15 minutes |
| RPO | < 1 minute |

## Author

**Jenella V.** — Solutions Architect
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
