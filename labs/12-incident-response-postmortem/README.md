# Automated Incident Response & Postmortem Pipeline

![PagerDuty](https://img.shields.io/badge/PagerDuty-06AC38?style=flat&logo=pagerduty&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![AWS Lambda](https://img.shields.io/badge/Lambda-FF9900?style=flat&logo=awslambda&logoColor=white)
![Slack](https://img.shields.io/badge/Slack-4A154B?style=flat&logo=slack&logoColor=white)

## Overview

Built an automated incident response system integrating PagerDuty, Slack, and Jira with auto-remediation runbooks. Established blameless postmortem culture reducing repeat incidents by 70%.

## Architecture

```
  Alert Source ──► PagerDuty ──► Webhook ──► API Gateway
  (Prometheus,                                    │
   CloudWatch)                                    ▼
                                          Lambda: Incident Router
                                            │         │         │
                                            ▼         ▼         ▼
                                      Create Slack  Create    Lookup
                                       Channel     Jira      Runbook
                                            │      Ticket       │
                                            └────────┬──────────┘
                                                     ▼
                                          Lambda: Auto Remediator
                                            │ (Restart pod, scale up,
                                            │  clear disk, etc.)
                                            ▼
                                     Incident Resolved?
                                       /          \
                                     YES           NO
                                      │             │
                                      ▼             ▼
                              Lambda: Postmortem  Escalate to
                              Generator           Human
                                      │
                                      ▼
                              S3 + Slack Post
                              Jira Follow-ups
```

## Step-by-Step Deployment

### Step 1: Deploy Infrastructure
```bash
cd terraform && terraform init && terraform apply
```

### Step 2: Configure PagerDuty Webhook
Point your PagerDuty service webhook to the API Gateway URL from Terraform output.

### Step 3: Set Up Slack App
Create a Slack app with `channels:manage`, `chat:write` permissions. Add the bot token to Lambda environment variables.

### Step 4: Test the Pipeline
```bash
# Trigger a test incident via PagerDuty API
curl -X POST https://<api-gateway-url>/incident \
  -H "Content-Type: application/json" \
  -d '{"event_type": "incident.triggered", "incident": {"title": "Test Incident", "severity": "P3"}}'
```

## Key Results

| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| Repeat Incidents | 40/quarter | 12/quarter | **70% reduction** |
| MTTR | 45 min | 8 min | **82% faster** |
| Manual Toil | 20 hrs/week | 10 hrs/week | **50% less** |
| Postmortem Completion | 30% | 100% | **Auto-generated** |

## Author

**Jenella V.** — SRE Lead
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
