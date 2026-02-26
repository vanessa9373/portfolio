# SOC 2 & ISO 27001 Compliance Matrix

## SOC 2 Type II Controls Mapping

| Control ID | Control Name | AWS Service | Implementation | Evidence |
|-----------|-------------|-------------|----------------|----------|
| CC6.1 | Logical Access Controls | IAM | Least-privilege policies, MFA enforcement | IAM credential report, policy documents |
| CC6.2 | Access Provisioning | IAM | Role-based access, automated onboarding/offboarding | CloudTrail logs of IAM changes |
| CC6.3 | Access Removal | IAM | Automated deprovisioning, access key rotation | Lambda function logs, Config rules |
| CC6.6 | Encryption in Transit | ALB/ACM | TLS 1.2+ enforced on all endpoints | ACM certificate inventory |
| CC6.7 | Encryption at Rest | KMS | AES-256 encryption on EBS, S3, RDS | KMS key policies, Config rule results |
| CC7.1 | Security Monitoring | GuardDuty | Continuous threat detection | GuardDuty findings dashboard |
| CC7.2 | System Monitoring | CloudWatch | Metrics, alarms, and dashboards | CloudWatch alarm configurations |
| CC7.3 | Change Detection | Config | Automated configuration compliance | Config rule evaluation results |
| CC7.4 | Incident Response | Security Hub | Centralized findings and automated response | Security Hub compliance score |
| CC8.1 | Change Management | CloudTrail | All API calls logged and auditable | CloudTrail event history |
| A1.1 | Availability Controls | Multi-AZ | Auto-failover for compute and database | RDS cluster status, ECS service events |
| A1.2 | Recovery Procedures | AWS Backup | Automated daily backups with cross-region | Backup vault inventory, restore tests |
| C1.1 | Confidentiality | KMS/IAM | Encryption + least-privilege access | KMS key usage logs |
| PI1.1 | Data Integrity | Config | Automated drift detection | Config compliance timeline |
| PI1.2 | Processing Integrity | CloudWatch | Application health checks and error monitoring | CloudWatch metrics and alarms |

## Evidence Collection Procedures

1. **Monthly**: Export IAM credential report, review Config compliance dashboard
2. **Quarterly**: Run security-audit.sh, review GuardDuty findings, rotate access keys
3. **Annually**: Full penetration test, disaster recovery drill, policy review
