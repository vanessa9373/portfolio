# SLO/SLI Definitions & Error Budget Policy

## Service Level Indicators (SLIs)

| SLI | Definition | Measurement |
|-----|-----------|-------------|
| **Availability** | Proportion of successful requests | `1 - (5xx responses / total responses)` |
| **Latency** | Proportion of requests faster than threshold | `requests < 200ms / total requests` |
| **Throughput** | Sustained request processing capacity | `requests per second over 5min window` |

## Service Level Objectives (SLOs)

| Tier | Services | Availability | Latency (P99) | Error Budget (30d) |
|------|----------|-------------|---------------|-------------------|
| **Tier 1** (Critical) | Auth, Payments, API Gateway | 99.95% | < 200ms | 21.6 min/month |
| **Tier 2** (Important) | Search, Notifications, Reports | 99.9% | < 500ms | 43.2 min/month |
| **Tier 3** (Standard) | Admin Panel, Internal Tools | 99.5% | < 1000ms | 216 min/month |

## Error Budget Policy

### When Error Budget > 50%
- Normal development velocity
- Deploy at will with standard CI/CD

### When Error Budget 25-50%
- Increased monitoring vigilance
- Prioritize reliability work in sprint planning

### When Error Budget < 25%
- Freeze non-critical feature deployments
- Engineering focus shifts to reliability improvements
- Mandatory postmortem for any new incidents

### When Error Budget = 0% (Exhausted)
- Complete feature freeze
- All hands on reliability until budget recovers
- Executive escalation
- Architecture review required before resuming deploys

## Multi-Window, Multi-Burn-Rate Alerting

| Window | Burn Rate | Severity | Notification |
|--------|-----------|----------|-------------|
| 1 hour | 14.4x | Critical | PagerDuty (page on-call) |
| 6 hours | 6x | Warning | Slack #sre-alerts |
| 24 hours | 3x | Warning | Slack #sre-alerts |
| 3 days | 1x | Info | Daily SLO report email |
