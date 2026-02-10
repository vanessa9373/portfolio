<p align="center">
  <strong>&lt;JV /&gt;</strong>
</p>

<h1 align="center">Jenella V.</h1>
<h3 align="center">Solutions Architect | Cloud Engineer | Site Reliability Engineer</h3>

<p align="center">
  <a href="https://vanessa9373.github.io/portfolio/">Portfolio</a> &bull;
  <a href="https://www.linkedin.com/in/jenella-v-4a4b963ab/">LinkedIn</a> &bull;
  <a href="mailto:vanessajenella@gmail.com">Email</a> &bull;
  Seattle, WA
</p>

<p align="center">
  <img src="https://img.shields.io/badge/AWS-Solutions_Architect-FF9900?style=flat&logo=amazonaws&logoColor=white" alt="AWS" />
  <img src="https://img.shields.io/badge/CKA-Kubernetes_Admin-326CE5?style=flat&logo=kubernetes&logoColor=white" alt="CKA" />
  <img src="https://img.shields.io/badge/Linux-Essentials-FCC624?style=flat&logo=linux&logoColor=black" alt="Linux" />
  <img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?style=flat&logo=terraform&logoColor=white" alt="Terraform" />
  <img src="https://img.shields.io/badge/Python-Scripting-3776AB?style=flat&logo=python&logoColor=white" alt="Python" />
</p>

---

## About

I design and deliver **scalable, secure, and cost-efficient** cloud solutions across AWS, Azure, and GCP. With 4+ years of hands-on consulting experience and a B.S. in Computer Science from **Western Governors University**, I combine deep technical expertise in Infrastructure as Code, SRE practices, and security with a consultative approach focused on business outcomes.

This repository contains my **professional portfolio website** and **9 production-grade projects** showcasing real-world cloud architecture, DevOps automation, and site reliability engineering.

---

## Live Portfolio

**[vanessa9373.github.io/portfolio](https://vanessa9373.github.io/portfolio/)** — Modern, responsive portfolio website built with HTML, CSS, and JavaScript featuring interactive sections, animated skill bars, project filtering, and a contact form.

---

## Projects

### Cloud Architecture & Migration

<table>
  <tr>
    <td width="60"><strong>01</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/01-cloud-migration">Enterprise Cloud Migration — On-Prem to AWS</a></h4>
      <p>Led the end-to-end migration of legacy on-premises infrastructure to AWS. Re-architected monolithic applications into containerized microservices on ECS Fargate with Aurora PostgreSQL and full IaC automation.</p>
      <p>
        <img src="https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazonaws&logoColor=white" />
        <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" />
        <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" />
        <img src="https://img.shields.io/badge/ECS_Fargate-FF9900?style=flat-square&logo=amazonecs&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 35% cost reduction &bull; 99.95% uptime &bull; 80% faster provisioning</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>terraform/main.tf</code> — VPC, ECS Fargate, Aurora PostgreSQL, ALB, CloudWatch (444 lines)</li>
          <li><code>docker/Dockerfile</code> — Multi-stage production build</li>
          <li><code>docker/docker-compose.yml</code> — Local development environment</li>
          <li><code>docs/migration-plan.md</code> — 4-phase migration plan with deliverables</li>
          <li><code>docs/architecture.md</code> — Architecture Decision Records (ECS vs EKS, Aurora vs RDS)</li>
        </ul>
      </details>
    </td>
  </tr>
  <tr>
    <td width="60"><strong>03</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/03-multi-cloud-architecture">Multi-Cloud Hybrid Architecture — AWS & Azure</a></h4>
      <p>Designed a hybrid multi-cloud architecture spanning AWS and Azure for a financial services client with secure cross-cloud VPN connectivity and SOC 2 compliance.</p>
      <p>
        <img src="https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazonaws&logoColor=white" />
        <img src="https://img.shields.io/badge/Azure-0078D4?style=flat-square&logo=microsoftazure&logoColor=white" />
        <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 99.99% availability &bull; SOC 2 compliant &bull; &lt;15 min RTO</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>terraform/aws/main.tf</code> — VPC, Transit Gateway, VPN Gateway</li>
          <li><code>terraform/azure/main.tf</code> — VNet, VPN Gateway, NSGs, IPsec tunnel</li>
          <li><code>docs/architecture-design.md</code> — Network topology, DR plan, compliance mapping</li>
        </ul>
      </details>
    </td>
  </tr>
</table>

### DevOps & Automation

<table>
  <tr>
    <td width="60"><strong>02</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/02-cicd-kubernetes">CI/CD Pipeline & Kubernetes Deployment Platform</a></h4>
      <p>Built a fully automated GitOps-based CI/CD platform using GitHub Actions, ArgoCD, and Amazon EKS with zero-downtime deployments and progressive rollouts.</p>
      <p>
        <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white" />
        <img src="https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white" />
        <img src="https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat-square&logo=argo&logoColor=white" />
        <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 10x deploy frequency &bull; Zero-downtime &bull; 30s rollback</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>terraform/main.tf</code> — EKS cluster, VPC, managed node groups, ECR</li>
          <li><code>k8s/deployment.yaml</code> — Rolling update strategy with health probes</li>
          <li><code>k8s/hpa.yaml</code> — Horizontal Pod Autoscaler with scale-up/down policies</li>
          <li><code>k8s/argocd/application.yaml</code> — GitOps Application with auto-sync</li>
          <li><code>.github/workflows/ci-cd.yaml</code> — Full pipeline: test, build, staging, production</li>
        </ul>
      </details>
    </td>
  </tr>
  <tr>
    <td width="60"><strong>05</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/05-terraform-modules">Production-Grade Terraform Module Library</a></h4>
      <p>Reusable, composable Terraform modules for VPC, EKS, RDS, and IAM — used across 10+ client engagements for consistent, secure, and repeatable infrastructure deployments.</p>
      <p>
        <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" />
        <img src="https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazonaws&logoColor=white" />
        <img src="https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 10+ clients &bull; 15 modules &bull; 80% faster provisioning</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>modules/vpc/</code> — VPC with public/private subnets, NAT, flow logs</li>
          <li><code>modules/eks/</code> — EKS with managed nodes, IRSA, OIDC provider</li>
          <li><code>modules/rds/</code> — Aurora PostgreSQL with encryption and backups</li>
          <li><code>examples/complete/</code> — Full environment using all modules together</li>
        </ul>
      </details>
    </td>
  </tr>
  <tr>
    <td width="60"><strong>06</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/06-serverless-pipeline">Serverless Event-Driven Data Processing Pipeline</a></h4>
      <p>Architected a serverless pipeline using Lambda, SQS, and DynamoDB that processes 1M+ events/day for a SaaS analytics platform, replacing costly EC2 infrastructure.</p>
      <p>
        <img src="https://img.shields.io/badge/Lambda-FF9900?style=flat-square&logo=awslambda&logoColor=white" />
        <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" />
        <img src="https://img.shields.io/badge/DynamoDB-4053D6?style=flat-square&logo=amazondynamodb&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 1M+ events/day &bull; 70% cost savings &bull; &lt;100ms latency</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>src/ingestion/handler.py</code> — API Gateway event validation and SQS publishing</li>
          <li><code>src/processor/handler.py</code> — SQS batch processing, DynamoDB writes, S3 archival</li>
        </ul>
      </details>
    </td>
  </tr>
</table>

### Security & Compliance

<table>
  <tr>
    <td width="60"><strong>04</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/04-security-compliance">Cloud Security & Compliance Framework</a></h4>
      <p>Comprehensive security framework for a healthcare client including IAM least-privilege policies, encryption strategies, automated compliance scanning, and continuous threat monitoring.</p>
      <p>
        <img src="https://img.shields.io/badge/Security_Hub-DC3545?style=flat-square&logo=springsecurity&logoColor=white" />
        <img src="https://img.shields.io/badge/GuardDuty-FF9900?style=flat-square&logo=amazonaws&logoColor=white" />
        <img src="https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 100% audit pass rate &bull; 45% faster detection &bull; ISO 27001 compliant</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>terraform/main.tf</code> — Security Hub, GuardDuty, Config rules, CloudTrail, KMS</li>
          <li><code>scripts/security-audit.sh</code> — Automated audit: public S3, unencrypted EBS, open SGs, MFA, old keys</li>
          <li><code>docs/compliance-matrix.md</code> — SOC 2 & ISO 27001 control mapping (15 controls)</li>
        </ul>
      </details>
    </td>
  </tr>
</table>

### Site Reliability Engineering (SRE)

<table>
  <tr>
    <td width="60"><strong>07</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/07-sre-observability">SRE Observability & SLO Platform</a></h4>
      <p>Full observability stack with SLO/SLI dashboards, multi-window burn-rate alerting, and error budget tracking for 50+ microservices on Kubernetes.</p>
      <p>
        <img src="https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white" />
        <img src="https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white" />
        <img src="https://img.shields.io/badge/OpenTelemetry-000000?style=flat-square&logo=opentelemetry&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 99.95% SLO achieved &bull; 60% fewer incidents &bull; 50+ services monitored</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>k8s/prometheus/alerting-rules.yaml</code> — 12 alert rules: SLO burn rate, error rate, latency, pod/node health</li>
          <li><code>scripts/slo-calculator.py</code> — Python CLI querying Prometheus for SLO compliance and error budget</li>
          <li><code>docs/slo-definitions.md</code> — 3-tier SLO definitions, error budget policy, burn-rate alerting strategy</li>
        </ul>
      </details>
    </td>
  </tr>
  <tr>
    <td width="60"><strong>08</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/08-chaos-engineering">Chaos Engineering & Resilience Testing Framework</a></h4>
      <p>Proactive reliability testing program using AWS Fault Injection Simulator and Litmus Chaos with automated safety controls, steady-state validation, and Game Day playbooks.</p>
      <p>
        <img src="https://img.shields.io/badge/AWS_FIS-FF9900?style=flat-square&logo=amazonaws&logoColor=white" />
        <img src="https://img.shields.io/badge/LitmusChaos-2496ED?style=flat-square&logo=cncf&logoColor=white" />
        <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 12 failure modes discovered &bull; 40% faster recovery &bull; 99.99% availability</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>scripts/run-experiment.py</code> — Orchestrator with pre-checks, safety thresholds, and auto-rollback</li>
          <li><code>experiments/aws-fis/ec2-instance-stop.json</code> — FIS experiment template with stop conditions</li>
          <li><code>experiments/litmus/pod-delete.yaml</code> — LitmusChaos pod delete with steady-state probes</li>
          <li><code>docs/gameday-playbook.md</code> — Roles, safety protocols, 4-hour agenda template</li>
        </ul>
      </details>
    </td>
  </tr>
  <tr>
    <td width="60"><strong>09</strong></td>
    <td>
      <h4><a href="https://github.com/vanessa9373/portfolio/tree/main/projects/09-incident-response">Automated Incident Response & Postmortem Pipeline</a></h4>
      <p>End-to-end incident lifecycle automation integrating PagerDuty, Slack, and Jira with auto-remediation runbooks and blameless postmortem generation.</p>
      <p>
        <img src="https://img.shields.io/badge/PagerDuty-06AC38?style=flat-square&logo=pagerduty&logoColor=white" />
        <img src="https://img.shields.io/badge/Slack-4A154B?style=flat-square&logo=slack&logoColor=white" />
        <img src="https://img.shields.io/badge/Lambda-FF9900?style=flat-square&logo=awslambda&logoColor=white" />
        <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" />
      </p>
      <p><strong>Results:</strong> 70% fewer repeat incidents &bull; 8 min MTTR &bull; 50% less toil</p>
      <details>
        <summary>What's Inside</summary>
        <ul>
          <li><code>src/incident_router/handler.py</code> — PagerDuty webhook -> Slack channel + Jira ticket + runbook</li>
          <li><code>src/auto_remediator/handler.py</code> — Auto-fix: scale up, restart, cleanup with safety fallback</li>
          <li><code>templates/postmortem-template.md</code> — Blameless postmortem with 5 Whys and action items</li>
          <li><code>templates/severity-matrix.md</code> — P1-P4 definitions, response SLAs, escalation paths</li>
          <li><code>docs/on-call-handbook.md</code> — Rotation structure, tooling setup, self-care guidelines</li>
        </ul>
      </details>
    </td>
  </tr>
</table>

---

## Technical Skills

| Category | Technologies |
|----------|-------------|
| **Cloud Platforms** | AWS, Microsoft Azure, Google Cloud Platform |
| **Infrastructure as Code** | Terraform, CloudFormation, Ansible |
| **Containers & Orchestration** | Docker, Kubernetes (EKS, AKS, GKE) |
| **CI/CD & GitOps** | GitHub Actions, ArgoCD, Jenkins, GitLab CI |
| **Site Reliability** | SLOs/SLIs, Error Budgets, Chaos Engineering, Incident Management |
| **Security & Compliance** | IAM, Zero Trust, SOC 2, ISO 27001, KMS, GuardDuty |
| **Monitoring & Observability** | Prometheus, Grafana, Datadog, CloudWatch, OpenTelemetry |
| **Networking** | VPC, DNS, Load Balancers, VPN, Direct Connect, ExpressRoute |
| **Languages & Scripting** | Python, Bash, PowerShell, Go, HCL, YAML |
| **Databases** | Aurora PostgreSQL, DynamoDB, RDS, Redis |

---

## Certifications

| Certification | Issuer | Status |
|--------------|--------|--------|
| **AWS Certified Solutions Architect — Associate** | Amazon Web Services | Earned |
| **Certified Kubernetes Administrator (CKA)** | CNCF | Earned |
| **Linux Essentials Certificate** | Linux Professional Institute | Earned |
| AWS Solutions Architect — Professional | Amazon Web Services | In Progress |
| HashiCorp Terraform Associate | HashiCorp | Planned |

---

## Education

**Bachelor of Science in Computer Science**
Western Governors University

---

## Repository Structure

```
portfolio/
├── index.html                          # Portfolio website
├── style.css                           # Styling (dark theme, responsive)
├── script.js                           # Interactivity (typing, filters, animations)
├── README.md                           # This file
├── assets/                             # Resume PDF, profile photo
└── projects/
    ├── README.md                       # Projects catalog
    ├── 01-cloud-migration/             # ECS Fargate migration with Terraform
    │   ├── terraform/                  #   VPC, ECS, Aurora, ALB
    │   ├── docker/                     #   Dockerfile, docker-compose
    │   └── docs/                       #   Migration plan, ADRs
    ├── 02-cicd-kubernetes/             # GitOps CI/CD on EKS
    │   ├── terraform/                  #   EKS cluster, ECR
    │   ├── k8s/                        #   Deployments, HPA, Ingress, ArgoCD
    │   └── .github/workflows/          #   GitHub Actions pipeline
    ├── 03-multi-cloud-architecture/    # AWS + Azure hybrid
    │   ├── terraform/aws/              #   VPC, Transit GW, VPN
    │   ├── terraform/azure/            #   VNet, VPN GW, NSGs
    │   └── docs/                       #   Architecture design, DR plan
    ├── 04-security-compliance/         # Security & compliance framework
    │   ├── terraform/                  #   Security Hub, GuardDuty, Config
    │   ├── scripts/                    #   Security audit script
    │   └── docs/                       #   SOC 2 / ISO 27001 matrix
    ├── 05-terraform-modules/           # Reusable Terraform modules
    │   ├── modules/vpc/                #   VPC module
    │   ├── modules/eks/                #   EKS module
    │   ├── modules/rds/                #   RDS/Aurora module
    │   └── examples/complete/          #   Full environment example
    ├── 06-serverless-pipeline/         # Event-driven serverless
    │   └── src/                        #   Lambda handlers (Python)
    ├── 07-sre-observability/           # SLO platform
    │   ├── k8s/prometheus/             #   Alerting rules (12 alerts)
    │   ├── scripts/                    #   SLO calculator (Python)
    │   └── docs/                       #   SLO definitions, error budgets
    ├── 08-chaos-engineering/           # Resilience testing
    │   ├── experiments/                #   AWS FIS + LitmusChaos
    │   ├── scripts/                    #   Experiment orchestrator (Python)
    │   └── docs/                       #   Game Day playbook
    └── 09-incident-response/           # Incident automation
        ├── src/                        #   Router + Remediator (Python)
        ├── templates/                  #   Postmortem, severity matrix
        └── docs/                       #   On-call handbook
```

---

## Git Workflow

This repository demonstrates a **feature-branch workflow**:

- Each project was developed on its own `feature/*` branch
- All branches were merged into `main` via `--no-ff` merge commits
- Branches are preserved on remote for reference

```
*   Merge feature/09-incident-response into main
|\
| * Add Project 09: Automated Incident Response & Postmortem Pipeline
*   Merge feature/08-chaos-engineering into main
|\
| * Add Project 08: Chaos Engineering & Resilience Testing Framework
*   Merge feature/07-sre-observability into main
...
* Initial portfolio website
```

---

## Contact

I'm actively seeking **Solutions Architect**, **Cloud Engineer**, **SRE**, and **Cloud Consultant** opportunities.

| | |
|---|---|
| **Email** | [vanessajenella@gmail.com](mailto:vanessajenella@gmail.com) |
| **LinkedIn** | [linkedin.com/in/jenella-v](https://www.linkedin.com/in/jenella-v-4a4b963ab/) |
| **GitHub** | [github.com/vanessa9373](https://github.com/vanessa9373) |
| **Portfolio** | [vanessa9373.github.io/portfolio](https://vanessa9373.github.io/portfolio/) |
| **Location** | Seattle, Washington &bull; Open to Remote |

---

<p align="center">
  <sub>Built with Terraform, Python, Kubernetes, and a passion for reliable infrastructure.</sub>
</p>
