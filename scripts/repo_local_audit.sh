#!/usr/bin/env bash
set -Eeuo pipefail

required_files=(
  README.md
  docs/architecture.md
  docs/reviewer-guide.md
  docs/operating-model.md
  docs/reliability-model.md
  docs/security-model.md
  docs/cost-model.md
  runbooks/incident-response.md
  runbooks/deployment-rollback.md
)

missing=0
for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "MISSING: $file"
    missing=1
  else
    echo "OK: $file"
  fi
done

if grep -RInE '(AKIA[0-9A-Z]{16}|aws_secret_access_key|BEGIN RSA PRIVATE KEY|BEGIN OPENSSH PRIVATE KEY|ghp_[A-Za-z0-9_]{30,})' . \
  --exclude-dir=.git \
  --exclude='repo_local_audit.sh'; then
  echo "Potential secret pattern found. Review before publishing."
  exit 2
fi

exit "$missing"
