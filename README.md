<div align="center">

```
  ██████╗██╗      ██████╗ ██╗   ██╗██████╗     ██╗  ██╗██╗   ██╗██████╗
 ██╔════╝██║     ██╔═══██╗██║   ██║██╔══██╗    ██║  ██║██║   ██║██╔══██╗
 ██║     ██║     ██║   ██║██║   ██║██║  ██║    ███████║██║   ██║██████╔╝
 ██║     ██║     ██║   ██║██║   ██║██║  ██║    ██╔══██║██║   ██║██╔══██╗
 ╚██████╗███████╗╚██████╔╝╚██████╔╝██████╔╝    ██║  ██║╚██████╔╝██████╔╝
  ╚═════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝
```

# Vanessa Awo

### Solutions Architect · Solutions Engineer · Pre-Sales SE

**AWS-Certified Cloud Professional** targeting SA, SE, and Pre-Sales Engineering roles

[![LinkedIn](https://img.shields.io/badge/LinkedIn-vanessajen-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/vanessajen)
[![Portfolio](https://img.shields.io/badge/Portfolio-Cloud_Career_Hub-6366F1?style=for-the-badge&logo=githubpages&logoColor=white)](https://denvanholdings-cloud.github.io/sa-career)
[![Email](https://img.shields.io/badge/Email-jenellaawo93@gmail.com-EA4335?style=for-the-badge&logo=gmail&logoColor=white)](mailto:jenellaawo93@gmail.com)
[![Location](https://img.shields.io/badge/Seattle,_WA-Remote_Ready-10B981?style=for-the-badge&logo=googlemaps&logoColor=white)](#)

</div>

---

## 🎯 Who I Am

I'm a cloud professional with **hands-on AWS infrastructure experience** and **3+ years of client-facing, high-stakes communication skills** developed through managing 100+ concurrent complex cases in a compliance-driven environment.

I bridge the gap between **technical depth** and **business outcomes** — which is exactly what great Solutions Architects and Solutions Engineers do.

**What I bring to an SA role:** Multi-AZ architecture, Terraform IaC, Well-Architected Framework, serverless design, VPC networking, and security-first infrastructure.

**What I bring to an SE / Pre-Sales role:** Structured discovery, POC delivery, stakeholder communication in plain language, multi-party negotiation, and the ability to translate complex technical decisions into business value — all proven through real client-facing work.

---

## 🏗️ Featured Projects

### 1. Highly Available WordPress Infrastructure on AWS
[![Repo](https://img.shields.io/badge/GitHub-ha--wordpress--terraform-181717?style=flat&logo=github)](https://github.com/denvanholdings-cloud/ha-wordpress-terraform)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat&logo=amazonaws&logoColor=white)

Production-grade, zero-SPOF 3-tier architecture across 3 Availability Zones — built as a live technical POC.

| Component | Implementation |
|-----------|---------------|
| **IaC** | Terraform — full infrastructure as code, reproducible in one command |
| **Compute** | EC2 Auto Scaling Group behind Application Load Balancer |
| **Database** | RDS MySQL Multi-AZ — synchronous replication, <2 min automatic failover |
| **CDN** | CloudFront + S3 OAC for global content delivery |
| **Security** | WAF (OWASP/SQLi rules), IMDSv2, KMS CMK encryption, SSM Session Manager |
| **Monitoring** | CloudWatch alarms on p99 latency, 5xx rate, RDS connections |

> 💡 **SA angle:** Demonstrates Well-Architected Framework across all 6 pillars  
> 💡 **SE angle:** Used as a live POC to communicate architecture trade-offs to stakeholders

---

### 2. Multi-Account AWS Landing Zone
[![Repo](https://img.shields.io/badge/GitHub-multi--account--landing--zone-181717?style=flat&logo=github)](https://github.com/denvanholdings-cloud/multi-account-landing-zone)
![AWS Organizations](https://img.shields.io/badge/AWS_Organizations-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)

Enterprise-grade multi-account architecture with centralized security and governance.

| Component | Implementation |
|-----------|---------------|
| **Structure** | 4 OUs (Management, Security, Infrastructure, Workloads) · 10+ accounts |
| **Governance** | 8 SCPs — DenyRootUser, RequireIMDSv2, AllowedRegionsOnly, DenyPublicS3 |
| **Networking** | Transit Gateway hub-and-spoke · Prod↔Dev network isolation |
| **Identity** | SAML 2.0 SSO via IAM Identity Center |
| **Security** | GuardDuty + Security Hub centralized across all accounts |

---

### 3. Serverless Task Management API
[![Repo](https://img.shields.io/badge/GitHub-serverless--task--api-181717?style=flat&logo=github)](https://github.com/denvanholdings-cloud/serverless-task-api)
![Lambda](https://img.shields.io/badge/Lambda-FF9900?style=flat&logo=awslambda&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=githubactions&logoColor=white)

Full CRUD REST API on serverless architecture — 90% cheaper than EC2+RDS baseline.

| Component | Implementation |
|-----------|---------------|
| **Compute** | 5 Lambda functions on Graviton2/arm64 — 20% cheaper than x86 |
| **API** | API Gateway HTTP API — $1.00/M vs REST API $3.50/M |
| **Database** | DynamoDB PAY_PER_REQUEST + GSI for status-based queries |
| **CI/CD** | GitHub Actions with OIDC auth — no long-lived AWS keys |
| **Cost** | ~$2.32/month at 1M requests |

---

### 4. Cloud Career Hub Platform
[![Live](https://img.shields.io/badge/Live_Site-denvanholdings--cloud.github.io-6366F1?style=flat&logo=githubpages)](https://denvanholdings-cloud.github.io/sa-career)
![React](https://img.shields.io/badge/React-61DAFB?style=flat&logo=react&logoColor=black)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)

Full-stack career platform with Firebase auth, AI-powered resume writer (Gemini), calendar with PIN lock, and role-based access control.

---

## 🛠️ Technical Skills

### AWS & Cloud
![EC2](https://img.shields.io/badge/EC2-FF9900?style=flat&logo=amazonaws&logoColor=white)
![S3](https://img.shields.io/badge/S3-569A31?style=flat&logo=amazons3&logoColor=white)
![Lambda](https://img.shields.io/badge/Lambda-FF9900?style=flat&logo=awslambda&logoColor=white)
![RDS](https://img.shields.io/badge/RDS-527FFF?style=flat&logo=amazonrds&logoColor=white)
![DynamoDB](https://img.shields.io/badge/DynamoDB-4053D6?style=flat&logo=amazondynamodb&logoColor=white)
![CloudFront](https://img.shields.io/badge/CloudFront-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Route53](https://img.shields.io/badge/Route_53-8C4FFF?style=flat&logo=amazonaws&logoColor=white)
![VPC](https://img.shields.io/badge/VPC_&_Networking-FF9900?style=flat&logo=amazonaws&logoColor=white)
![IAM](https://img.shields.io/badge/IAM-DD344C?style=flat&logo=amazonaws&logoColor=white)
![CloudWatch](https://img.shields.io/badge/CloudWatch-FF4F8B?style=flat&logo=amazonaws&logoColor=white)
![ECS](https://img.shields.io/badge/ECS-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Elastic Beanstalk](https://img.shields.io/badge/Elastic_Beanstalk-FF9900?style=flat&logo=amazonaws&logoColor=white)

### IaC & DevOps
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![CloudFormation](https://img.shields.io/badge/CloudFormation-FF9900?style=flat&logo=amazonaws&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=githubactions&logoColor=white)

### Languages & OS
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat&logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black)

### Frontend & Tools
![React](https://img.shields.io/badge/React-61DAFB?style=flat&logo=react&logoColor=black)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)

---

## 📜 Certifications

| Certification | Issuer | Date |
|--------------|--------|------|
| ✅ AWS Solutions Architect — Associate (SAA-C03) | Amazon Web Services | Sep 2025 |
| ✅ ITIL 4 Foundation — IT Service Management | PeopleCert | Jun 2026 |
| ✅ AWS Solutions Architecture Job Simulation | AWS · Forage | Sep 2025 |
| ✅ Verizon Cloud Platform Job Simulation | Verizon Communications · Forage | Sep 2025 |
| ✅ Linux Essentials | Linux Professional Institute | May 2025 |
| ✅ Data Analytics Certificate | Colaberry School of Data Analytics | Jul 2022 |

---

## 🎓 Education

| Degree | Institution | Year |
|--------|------------|------|
| AWS re/Start Training | Per Scholas · Seattle, WA | 2026 |
| B.S. Computer Science | Western Governors University | 2026 |
| B.S. Business Management | University of Douala · Cameroon | 2019 |

---

## 💼 What I'm Targeting

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│  🏗️  Solutions Architect     — Cloud infrastructure design  │
│  🎯  Solutions Engineer      — Pre-sales, POC, discovery    │
│  🔧  SRE / DevOps Engineer   — Reliability & automation     │
│                                                             │
│  📍 Seattle, WA · Remote-first · Open to Relocation         │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

**What makes me different for SE/Pre-Sales roles:**
- 3+ years managing 100+ concurrent complex client engagements with SLA accountability
- Proven ability to translate technical complexity into plain business language
- Real POC delivery experience through AWS Forage simulations and live cloud projects
- Business background (B.S. Business Management) + technical depth (AWS cert, Terraform, Linux)

---

## 📫 Let's Connect

| | |
|--|--|
| 🌐 **Portfolio** | [denvanholdings-cloud.github.io/sa-career](https://denvanholdings-cloud.github.io/sa-career) |
| 💼 **LinkedIn** | [linkedin.com/in/vanessajen](https://linkedin.com/in/vanessajen) |
| 📧 **Email** | [jenellaawo93@gmail.com](mailto:jenellaawo93@gmail.com) |
| 📍 **Location** | Seattle, WA · Remote-Ready · Open to Relocation |

---

<div align="center">
  <sub>Open to Solutions Architect · Solutions Engineer · Pre-Sales SE · SRE opportunities</sub>
</div>
