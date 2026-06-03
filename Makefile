.PHONY: validate tree

validate:
	bash scripts/repo_local_audit.sh

tree:
	find . -maxdepth 3 -type f | sort
