# Serverless Event-Driven Data Processing Pipeline

![AWS Lambda](https://img.shields.io/badge/Lambda-FF9900?style=flat&logo=awslambda&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![DynamoDB](https://img.shields.io/badge/DynamoDB-4053D6?style=flat&logo=amazondynamodb&logoColor=white)

## Overview

Architected a serverless event-driven pipeline using Lambda, SQS, and DynamoDB that processes 1M+ events/day for a SaaS client's analytics platform. The solution reduced infrastructure costs by 70% compared to the previous EC2-based architecture.

## Architecture

```
                    ┌───────────────────────────────────────────────┐
                    │          Serverless Data Pipeline              │
                    │                                               │
  Clients ──►  API Gateway ──► Lambda (Ingestion)                  │
                    │                 │                              │
                    │                 ▼                              │
                    │           SQS Queue ──► DLQ                   │
                    │                 │                              │
                    │                 ▼                              │
                    │         Lambda (Processor)                    │
                    │            │         │                         │
                    │            ▼         ▼                         │
                    │       DynamoDB     S3 (Archive)               │
                    │                                               │
                    │  CloudWatch ──► Lambda (Aggregator) ──► SNS  │
                    │  (Scheduled)                                  │
                    └───────────────────────────────────────────────┘
```

## Step-by-Step Deployment

### Step 1: Deploy Infrastructure
```bash
cd terraform && terraform init && terraform apply
```

### Step 2: Package and Deploy Lambda Functions
```bash
cd src/ingestion && zip -r function.zip . && aws lambda update-function-code --function-name ingestion --zip-file fileb://function.zip
cd ../processor && zip -r function.zip . && aws lambda update-function-code --function-name processor --zip-file fileb://function.zip
```

### Step 3: Test the Pipeline
```bash
curl -X POST https://<api-id>.execute-api.us-west-2.amazonaws.com/prod/events \
  -H "Content-Type: application/json" \
  -d '{"event_type": "page_view", "user_id": "u123", "page": "/home"}'
```

## Key Results

| Metric | Result |
|--------|--------|
| Events Processed | **1M+/day** |
| Cost Savings | **70%** vs EC2 |
| Latency | **< 100ms** |
| Availability | **99.99%** |

## Author

**Jenella V.** — Solutions Architect
- [LinkedIn](https://www.linkedin.com/in/jenella-v-4a4b963ab/) | [GitHub](https://github.com/vanessa9373)
