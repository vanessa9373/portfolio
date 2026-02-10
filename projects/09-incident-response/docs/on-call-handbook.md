# On-Call Handbook

## On-Call Responsibilities
- Respond to pages within the SLA for the incident severity
- Triage, investigate, and resolve or escalate incidents
- Document actions in the incident Slack channel
- Hand off open incidents at rotation change
- Write or review postmortems for P1/P2 incidents

## Rotation Structure
- **Primary on-call:** 1 week rotation (Monday 9am → Monday 9am)
- **Secondary on-call:** Backup if primary doesn't respond within 5 minutes
- **Rotation size:** 6 engineers minimum (1 week on, 5 weeks off)

## Handoff Procedures
1. Review all open incidents and their current status
2. Walk through any ongoing investigations
3. Share context on recent changes or deployments
4. Confirm PagerDuty schedules are correct
5. Test: send a test page to verify the new on-call receives it

## Tooling Setup
- [ ] PagerDuty mobile app installed and notifications enabled
- [ ] Slack desktop + mobile with notification settings for #incidents
- [ ] VPN configured and tested
- [ ] kubectl access to production clusters verified
- [ ] AWS Console access verified
- [ ] Grafana dashboards bookmarked

## Response SLAs by Severity

| Severity | Acknowledge | Start Investigation | Resolution Target |
|----------|------------|-------------------|------------------|
| P1 | 5 min | 10 min | 1 hour |
| P2 | 15 min | 30 min | 4 hours |
| P3 | 1 hour | 2 hours | 1 business day |
| P4 | 4 hours | Next business day | 1 week |

## Self-Care
- **You are not expected to be awake 24/7.** Set up proper escalation policies.
- If you're paged more than 3 times in a night, escalate to your manager for relief.
- Track your page count — if it exceeds 2 pages/day averaged over a week, that's a toil problem that needs addressing.
- Take comp time after a difficult on-call week.
- If you feel burned out, speak up — the rotation can be adjusted.

## FAQ
**Q: What if I can't respond to a page?**
A: PagerDuty will auto-escalate to the secondary on-call after 5 minutes.

**Q: Can I swap my on-call shift?**
A: Yes — find a volunteer and update PagerDuty. Notify the team in #sre-team.

**Q: Do I need to fix everything during on-call?**
A: No. Your job is to **restore service** (mitigate), not fix the root cause. File a ticket for the permanent fix.
