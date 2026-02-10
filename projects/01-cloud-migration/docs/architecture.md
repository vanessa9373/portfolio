# Architecture Decision Record

## ADR-001: ECS Fargate over EKS

### Context
The migrated application consists of 3 microservices. We needed to choose a container orchestration platform.

### Decision
Selected **ECS Fargate** over EKS.

### Rationale
- **Operational simplicity**: No cluster management, no node patching
- **Right-sized for workload**: 3 services don't justify Kubernetes complexity
- **Cost**: Fargate is more cost-effective at this scale (< 20 tasks)
- **Team skill set**: Team had more ECS experience than Kubernetes

### Consequences
- Lose Kubernetes portability and ecosystem (Helm, operators)
- Simpler to operate but less flexible for future growth
- If workload grows to 50+ services, should re-evaluate EKS

---

## ADR-002: Aurora PostgreSQL over Standard RDS

### Context
On-prem database was Oracle. Needed a managed PostgreSQL solution.

### Decision
Selected **Aurora PostgreSQL** over standard RDS PostgreSQL.

### Rationale
- **Performance**: 3x throughput over standard PostgreSQL
- **High availability**: Built-in Multi-AZ with automatic failover
- **Storage auto-scaling**: Grows in 10GB increments up to 128TB
- **Backup**: Continuous backups to S3 with point-in-time recovery

### Consequences
- Higher cost per instance than standard RDS (~20% more)
- Worth it for production reliability requirements (99.95% SLO)

---

## ADR-003: Multi-AZ Architecture

### Context
Client required disaster recovery and high availability.

### Decision
Deploy all components across 2 Availability Zones.

### Rationale
- ALB spans both AZs for traffic distribution
- ECS tasks run in both AZs with a minimum of 1 task per AZ
- Aurora has a writer in AZ-a and reader replica in AZ-b
- NAT Gateways in both AZs to avoid cross-AZ single point of failure

### Consequences
- Higher cost (2x NAT Gateways, 2x Aurora instances)
- Achieves 99.95% availability target
- Automatic failover for both compute and database tiers
