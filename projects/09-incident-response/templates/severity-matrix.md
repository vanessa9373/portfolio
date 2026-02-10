# Incident Severity Matrix

## Severity Definitions

| Severity | Name | Definition | Examples |
|----------|------|-----------|----------|
| **P1** | Critical | Complete service outage or data loss affecting all users | Production down, data breach, payment processing failure |
| **P2** | High | Major feature degraded, significant user impact | Auth service errors for 30%+ users, search unavailable |
| **P3** | Medium | Minor feature degraded, limited user impact | Slow dashboard loading, notification delays |
| **P4** | Low | Cosmetic or minor issue, no significant user impact | Typo in error message, non-critical log noise |

## Response Requirements

| Severity | Response Time | Update Cadence | Communication | Responders |
|----------|-------------|----------------|---------------|-----------|
| **P1** | 5 minutes | Every 15 min | Exec + Eng + CS | On-call + backup + engineering lead |
| **P2** | 15 minutes | Every 30 min | Engineering + CS | On-call + relevant team |
| **P3** | 1 hour | Every 2 hours | Engineering only | On-call |
| **P4** | 4 hours | Next business day | Ticket only | Assigned engineer |

## Escalation Paths

### P1 Escalation
1. **0 min:** PagerDuty pages primary on-call
2. **5 min:** If no ack → page backup on-call
3. **15 min:** If unresolved → page engineering manager
4. **30 min:** If unresolved → page VP Engineering
5. **1 hour:** If unresolved → page CTO

### P2 Escalation
1. **0 min:** PagerDuty pages primary on-call
2. **15 min:** If no ack → page backup on-call
3. **1 hour:** If unresolved → page engineering manager
