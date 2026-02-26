# Architecture Design Document — Multi-Cloud Hybrid

## Business Requirements
- Active-active workloads across two cloud providers for vendor redundancy
- Cross-cloud latency < 50ms for inter-service communication
- SOC 2 Type II compliance for financial data handling
- RTO < 15 minutes, RPO < 1 minute

## Network Topology
- **AWS VPC**: 10.0.0.0/16 (us-west-2)
- **Azure VNet**: 10.1.0.0/16 (West US 2)
- **Connectivity**: Site-to-site VPN (IPsec IKEv2, AES-256)
- **DNS**: Route 53 with failover routing policy

## Security Architecture
- All cross-cloud traffic encrypted via IPsec VPN tunnels
- Network segmentation: public-facing ALB/AppGW in public subnets, workloads in private
- IAM: Separate identity providers per cloud, federated via SAML
- Encryption at rest: AWS KMS / Azure Key Vault for all data stores
- Compliance: Automated SOC 2 control monitoring via AWS Config + Azure Policy

## Disaster Recovery
| Scenario | Detection | Failover | Recovery |
|----------|-----------|----------|----------|
| Single AZ failure | Auto (health checks) | Auto (ALB/AppGW) | < 1 min |
| Single cloud outage | Route 53 health check | Auto DNS failover | < 15 min |
| VPN tunnel failure | CloudWatch alarm | Auto (redundant tunnels) | < 5 min |
| Data corruption | Backup validation | Manual restore | < 1 hour |
