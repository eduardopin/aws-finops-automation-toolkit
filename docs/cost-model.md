# Cost Model

## FinOps view

Cloud cost should be treated as an engineering signal. The operating model should make cost visible by workload, team, environment and business capability.

## Cost levers

| Lever | Engineering action |
|---|---|
| Right-sizing | Match resources to observed usage. |
| Scheduling | Stop non-production workloads outside business hours where applicable. |
| Commitment discounts | Use reservations/savings plans after usage is stable. |
| Storage lifecycle | Move data through tiers based on access pattern. |
| Network/CDN optimization | Improve cache-hit ratio and reduce unnecessary transfer. |
| Idle cleanup | Detect and remove unused resources continuously. |

## Governance controls

- Mandatory tags for owner, environment, product and cost center.
- Budget alerts by environment and workload.
- Pull-request cost visibility for infrastructure changes.
- Monthly review of anomalies and optimization backlog.
