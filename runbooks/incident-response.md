# Incident Response Runbook

## Objective

Provide a clear and repeatable process for identifying, triaging, mitigating and reviewing incidents.

## Severity model

| Severity | Description | Expected action |
|---|---|---|
| SEV1 | Major customer/business impact | Immediate response, leadership communication and formal review. |
| SEV2 | Material degradation or partial outage | On-call response and service-owner escalation. |
| SEV3 | Limited degradation or risk | Triage during business hours or normal on-call path. |

## Response flow

1. Confirm the alert is actionable.
2. Identify affected service, owner and user impact.
3. Check recent deployments, dependency failures and cost/resource anomalies.
4. Apply mitigation or rollback.
5. Communicate status and next update time.
6. Open follow-up actions after incident review.

## Review questions

- What failed?
- Why was it not prevented?
- Why was it not detected earlier?
- What reduced or increased MTTR?
- Which control, dashboard, runbook or automation should change?
