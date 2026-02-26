# SRE Observability & SLO Platform

![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat&logo=grafana&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat&logo=kubernetes&logoColor=white)
![SRE](https://img.shields.io/badge/SRE-4285F4?style=flat)

## Overview

Built a comprehensive observability platform with SLO/SLI dashboards, automated alerting, and error budget tracking for a SaaS company's production services spanning 50+ microservices on Kubernetes.

## Architecture

```
  ┌─────────────────────────────────────────────────────────────┐
  │                    Observability Stack                       │
  │                                                             │
  │  Microservices ──► OpenTelemetry Collector                 │
  │       (50+)              │                                  │
  │                    ┌─────┼─────┐                            │
  │                    ▼     ▼     ▼                            │
  │              Prometheus  Loki  Tempo                        │
  │              (Metrics)  (Logs) (Traces)                     │
  │                    │                                        │
  │                    ▼                                        │
  │              ┌──────────┐     ┌──────────┐                 │
  │              │ Grafana  │     │Alertmanager│                │
  │              │Dashboards│     │           │──► PagerDuty   │
  │              │ SLO/SLI  │     │           │──► Slack       │
  │              └──────────┘     └──────────┘                 │
  │                                                             │
  │  SLO Calculator ──► Error Budget Tracking                  │
  └─────────────────────────────────────────────────────────────┘
```

## Step-by-Step Deployment

### Step 1: Deploy Infrastructure
```bash
cd terraform && terraform init && terraform apply
```

### Step 2: Install Prometheus Stack on EKS
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack \
  --namespace monitoring --create-namespace \
  -f k8s/prometheus/prometheus-config.yaml
```

### Step 3: Apply Alerting Rules
```bash
kubectl apply -f k8s/prometheus/alerting-rules.yaml
```

### Step 4: Import Grafana Dashboards
```bash
# Port-forward to Grafana
kubectl port-forward svc/prometheus-grafana 3000:80 -n monitoring
# Import dashboards from k8s/grafana/*.json via Grafana UI
```

### Step 5: Deploy OpenTelemetry Collector
```bash
kubectl apply -f k8s/otel/otel-collector-config.yaml
```

### Step 6: Run SLO Calculator
```bash
python scripts/slo-calculator.py --prometheus-url http://localhost:9090 --window 30d
```

## Key Results

| Metric | Result |
|--------|--------|
| SLO Compliance | **99.95%** achieved |
| Incident Reduction | **60% fewer** |
| Services Monitored | **50+** |
| MTTD Improvement | **45% faster** |

## Author

**Jenella V.** — Site Reliability Engineer
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
