# AWS Solutions Architect Portfolio

**Author:** Vanessa Awo &nbsp;|&nbsp; GitHub: [@vanessa9373](https://github.com/vanessa9373)

A portfolio of four production-grade AWS architecture projects designed to demonstrate the thinking, tradeoffs, and design decisions expected of an **AWS Solutions Architect** or **Solutions Engineer**.

Each project simulates a real business scenario — not a tutorial — with architecture decisions justified, cost analyzed, and failure modes addressed.

---

## Projects at a Glance

| # | Project | Scenario | Core Services | Key Concepts |
|---|---------|----------|---------------|--------------|
| 1 | [Multi-Region E-Commerce Platform](./project-1-ecommerce-platform/) | Flash-sale retail startup | ALB, Aurora Global DB, CloudFront, Route 53, ElastiCache | Multi-region HA, disaster recovery, session management |
| 2 | [Serverless SaaS Multi-Tenant Platform](./project-2-saas-platform/) | B2B SaaS startup | API Gateway, Lambda, DynamoDB, Cognito, WAF | Tenant isolation, serverless scale-to-zero, JWT auth |
| 3 | [Secure FinTech Data Lake & Analytics](./project-3-fintech-data-lake/) | FinTech / regulated industry | S3, Glue, Athena, Redshift, Lake Formation, Macie | Data governance, compliance (PCI-DSS), column-level security |
| 4 | [Global Media Streaming Platform](./project-4-media-platform/) | Video-on-demand media company | CloudFront, S3, MediaConvert, API Gateway, DynamoDB | Signed URLs, adaptive bitrate, global CDN, origin shield |

---

## Architecture Skills Demonstrated

- **System Design** — Translating business requirements into AWS service architectures
- **High Availability** — Multi-AZ and multi-region designs with defined RTO/RPO
- **Security Architecture** — IAM least-privilege, encryption at rest and in transit, network isolation
- **Cost Optimization** — Reserved vs On-Demand vs Spot, tiered storage, right-sizing decisions
- **Scalability** — Auto Scaling, serverless, read replicas, caching layers
- **Tradeoff Analysis** — SQL vs NoSQL, monolith vs microservices, consistency vs availability
- **Disaster Recovery** — Pilot light, warm standby, and active-active patterns

---

## How to Use This Portfolio in Interviews

Each project README includes a **"Interview Talking Points"** section. When asked *"Tell me about a project you've worked on"* — lead with the business problem, then the architecture decision, then the tradeoff you made. Interviewers assess **why** you chose a service, not just **what** you chose.

---

## Certifications These Projects Support

- AWS Certified Solutions Architect – Associate (SAA-C03)
- AWS Certified Solutions Architect – Professional (SAP-C02)
- AWS Certified Cloud Practitioner (CLF-C02)
