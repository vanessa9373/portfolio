# Postmortem: [Incident Title]

**Date:** YYYY-MM-DD
**Severity:** P1 / P2 / P3 / P4
**Duration:** X hours Y minutes
**Authors:** [Names]
**Status:** Draft / Reviewed / Complete

---

## Summary
_1-2 sentence summary of what happened and the impact._

## Impact
- **Users Affected:** X users / X% of traffic
- **Duration:** HH:MM start to HH:MM resolution
- **Revenue Impact:** $X estimated (if applicable)
- **SLO Impact:** Error budget consumed: X%

## Timeline (All times UTC)

| Time | Event |
|------|-------|
| HH:MM | Alert fired: [alert name] |
| HH:MM | On-call engineer paged |
| HH:MM | Incident channel created: #inc-xxx |
| HH:MM | Root cause identified |
| HH:MM | Fix deployed |
| HH:MM | Monitoring confirms recovery |
| HH:MM | Incident resolved |

## Root Cause Analysis

### 5 Whys
1. **Why** did the service go down? → _Because..._
2. **Why** did that happen? → _Because..._
3. **Why** did that happen? → _Because..._
4. **Why** did that happen? → _Because..._
5. **Why** did that happen? → _Because..._

### Root Cause
_Clear description of the underlying root cause._

### Contributing Factors
- Factor 1
- Factor 2

## What Went Well
- Auto-remediation triggered within 30 seconds
- Incident channel created automatically
- Team communicated effectively

## What Went Wrong
- Alert was too noisy, initially dismissed
- Runbook was outdated
- No automated rollback for this service

## Action Items

| Action | Owner | Priority | Due Date | Status |
|--------|-------|----------|----------|--------|
| Update runbook for service X | @engineer | High | YYYY-MM-DD | Open |
| Add automated rollback | @sre-team | High | YYYY-MM-DD | Open |
| Tune alert thresholds | @sre-team | Medium | YYYY-MM-DD | Open |
| Add integration test | @dev-team | Medium | YYYY-MM-DD | Open |

## Lessons Learned
_Key takeaways that should inform future architecture and process decisions._
