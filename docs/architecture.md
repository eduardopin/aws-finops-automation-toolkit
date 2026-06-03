# Architecture

## Context

AWS FinOps automation toolkit with Cost Explorer patterns, Infracost, Cloud Custodian and scheduled shutdown/start controls.

## Goals

- Provide a reusable and understandable architecture reference.
- Show how infrastructure capabilities become reliable engineering products.
- Make security, reliability and cost considerations explicit.
- Keep public examples free of secrets, company code and proprietary implementation details.

## Non-goals

- Reproduce any employer environment.
- Publish internal architecture diagrams.
- Expose production hostnames, customer data, credentials or private operational details.

## High-level flow



## Main trade-offs

| Decision area | Preferred bias | Rationale |
|---|---|---|
| Automation | Repeatable over manual | Reduces drift and operational risk. |
| Security | Guardrails in CI/CD | Prevents late discovery of risk. |
| Reliability | Observable systems | Unknown failure modes become visible earlier. |
| Cost | Cost-aware defaults | Cloud cost is a design constraint, not only a finance problem. |
| Documentation | Docs as operational interface | Teams scale better when knowledge is explicit. |
