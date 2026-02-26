# Chaos Engineering & Resilience Testing Framework

![AWS FIS](https://img.shields.io/badge/AWS_FIS-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat&logo=kubernetes&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)

## Overview

Designed and implemented a chaos engineering program using AWS Fault Injection Simulator and Litmus Chaos to proactively identify failure modes and validate auto-recovery mechanisms across production infrastructure.

## Architecture

```
  ┌─────────────────────────────────────────────────────────┐
  │               Chaos Engineering Framework                │
  │                                                         │
  │  ┌─────────────┐       ┌─────────────────────────┐     │
  │  │  Experiment  │──────►│   Target Infrastructure  │     │
  │  │  Orchestrator│       │   (EKS / EC2 / RDS)     │     │
  │  │  (Python)    │       └─────────────────────────┘     │
  │  └──────┬──────┘                │                       │
  │         │                       ▼                       │
  │   ┌─────┴──────┐       ┌──────────────┐               │
  │   │ AWS FIS    │       │ Prometheus   │               │
  │   │ Litmus     │       │ (Monitoring) │               │
  │   │ Chaos      │       └──────┬───────┘               │
  │   └────────────┘              ▼                        │
  │                       ┌──────────────┐                 │
  │                       │   Grafana    │                 │
  │                       │ (Dashboard)  │                 │
  │                       └──────────────┘                 │
  │                                                        │
  │  Safety Controls: CloudWatch Alarms → Auto Stop        │
  └─────────────────────────────────────────────────────────┘
```

## Step-by-Step: Running a Chaos Experiment

### Step 1: Deploy Chaos Infrastructure
```bash
cd terraform && terraform init && terraform apply
```

### Step 2: Verify Monitoring is Healthy
```bash
python scripts/run-experiment.py --pre-check
```

### Step 3: Run an Experiment
```bash
# AWS FIS: Stop EC2 instances in a target AZ
python scripts/run-experiment.py --experiment aws-fis/ec2-instance-stop --duration 300

# Litmus: Delete random pods
kubectl apply -f experiments/litmus/pod-delete.yaml
```

### Step 4: Analyze Results
```bash
python scripts/analyze-results.py --experiment-id exp-20260101 --window 1h
```

### Step 5: Generate Report
The analyze script produces a markdown report in `reports/`.

## Experiment Catalog

| ID | Experiment | Category | Blast Radius | Risk |
|----|-----------|----------|-------------|------|
| CE-01 | EC2 Instance Stop | Compute | Single AZ | Medium |
| CE-02 | CPU Stress (80%) | Compute | Single instance | Low |
| CE-03 | Network Latency (+200ms) | Network | Target group | Medium |
| CE-04 | Network Packet Loss (30%) | Network | Target group | High |
| CE-05 | Pod Delete | Kubernetes | Single pod | Low |
| CE-06 | Node Drain | Kubernetes | Single node | Medium |
| CE-07 | DNS Failure | Network | Namespace | High |
| CE-08 | Disk Fill (90%) | Storage | Single node | Medium |

## Key Results

| Metric | Result |
|--------|--------|
| Failure Modes Discovered | **12** |
| Recovery Time Improvement | **40% faster** |
| Availability After Program | **99.99%** |
| Game Days Conducted | **4 per quarter** |

## Author

**Jenella V.** — SRE / Reliability Engineer
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
