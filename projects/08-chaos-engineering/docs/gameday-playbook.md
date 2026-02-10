# Game Day Playbook

## What is a Game Day?
A planned, time-boxed event where teams deliberately inject failures into systems to test resilience, practice incident response, and uncover weaknesses before they cause real outages.

## Roles & Responsibilities

| Role | Responsibility |
|------|---------------|
| **Game Master** | Plans experiments, controls execution, calls abort if needed |
| **Observer** | Monitors dashboards, records timeline and findings |
| **Operator** | Responds to failures as if they were real incidents |
| **Stakeholder** | Receives updates, approves scope and blast radius |

## Planning Checklist

### 2 Weeks Before
- [ ] Define experiment scope and objectives
- [ ] Select target services and failure scenarios
- [ ] Get stakeholder approval for blast radius
- [ ] Verify monitoring and alerting is functional
- [ ] Prepare rollback procedures for each experiment
- [ ] Schedule the Game Day and send calendar invites

### 1 Week Before
- [ ] Run pre-flight checks on all experiments
- [ ] Verify safety stop conditions (CloudWatch alarms)
- [ ] Brief all participants on their roles
- [ ] Prepare Grafana dashboards for real-time monitoring
- [ ] Test communication channels (Slack, Zoom)

### Day Of
- [ ] Morning standup: review plan, roles, safety protocols
- [ ] Verify no other changes in flight (deploy freeze)
- [ ] Open monitoring dashboards on shared screen
- [ ] Execute experiments one at a time
- [ ] 15-minute debrief after each experiment
- [ ] End-of-day retrospective

## Safety Protocols
1. **All experiments must have a stop condition** (CloudWatch alarm)
2. **Only target "ChaosReady" tagged resources**
3. **Never run during peak traffic hours** (schedule during low-traffic windows)
4. **Game Master has authority to abort at any time**
5. **Production databases are never targeted** (use read replicas only)

## Sample 4-Hour Agenda

| Time | Activity |
|------|---------|
| 09:00 | Kickoff, review plan and safety protocols |
| 09:15 | Experiment 1: Pod deletion (low blast radius) |
| 09:45 | Debrief Experiment 1 |
| 10:00 | Experiment 2: AZ failure simulation |
| 10:45 | Debrief Experiment 2 |
| 11:00 | Break |
| 11:15 | Experiment 3: Network latency injection |
| 12:00 | Debrief Experiment 3 |
| 12:15 | Final retrospective and action item capture |
| 13:00 | End |
