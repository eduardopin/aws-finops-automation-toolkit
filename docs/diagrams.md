# AWS FinOps Visual Diagrams

These diagrams describe the review flow for AWS cost allocation, optimization, commitments and automated remediation. They are designed for GitHub rendering with Mermaid.

## Multi-Account Cost Flow

```mermaid
flowchart TD
  payer[AWS management account] --> cur[Cost and Usage Report]
  payer --> budgets[AWS Budgets]
  linked[Linked workload accounts] --> usage[Service usage and tags]
  usage --> cur

  cur --> lake[Cost analytics bucket or warehouse]
  budgets --> alerts[Budget and anomaly alerts]
  lake --> allocation[Account, tag and service allocation]
  allocation --> showback[Showback report]
  alerts --> triage[FinOps triage]
  showback --> triage
  triage --> backlog[Optimization backlog]
```

## Optimization Decision Tree

```mermaid
flowchart LR
  finding[Cost finding] --> type{Finding type}
  type -- idle resource --> owner[Confirm owner and lifecycle]
  type -- rightsizing --> metrics[Review utilization metrics]
  type -- commitment --> forecast[Review forecast and coverage]
  type -- missing tag --> tagfix[Request tag remediation]

  owner --> action{Safe to stop or remove?}
  metrics --> action
  forecast --> approve[Finance and platform approval]
  tagfix --> policy[Tag policy exception or fix]

  action -- yes --> remediate[Apply approved remediation]
  action -- no --> exception[Document exception and expiry]
  approve --> purchase[Commitment purchase or renewal]
  policy --> evidence[Record evidence]
  remediate --> evidence
  exception --> evidence
  purchase --> evidence
```

## Commitment Review Cadence

```mermaid
sequenceDiagram
  participant FinOps
  participant Platform
  participant ServiceOwner
  participant Finance

  FinOps->>Platform: Share coverage, utilization and forecast
  Platform->>ServiceOwner: Confirm stable workloads and growth plans
  ServiceOwner-->>Platform: Approve workload assumptions or exceptions
  Platform-->>FinOps: Return technical recommendation
  FinOps->>Finance: Present savings, risk and term options
  Finance-->>FinOps: Approve purchase boundary
  FinOps->>Platform: Record decision and review date
```

## Automated Remediation Guardrails

```mermaid
flowchart TB
  signal[Idle, untagged or anomalous resource] --> classify[Classify severity and owner]
  classify --> guardrail{Guardrail result}
  guardrail -- allowed low risk --> execute[Execute safe action]
  guardrail -- approval required --> ticket[Create owner approval item]
  guardrail -- blocked --> review[Manual platform review]

  execute --> audit[Write audit evidence]
  ticket --> approved{Approved?}
  approved -- yes --> execute
  approved -- no --> exception[Document exception]
  review --> exception
  exception --> audit
  audit --> report[Update cost governance report]
```

## How to Use These Diagrams

Use the diagrams to review whether automation has clear inputs, owners, approval paths and evidence. Any action that can affect availability, security posture or customer-facing workloads should require explicit owner approval.
