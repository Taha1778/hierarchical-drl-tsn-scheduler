# Hierarchical DRL TSN Scheduler

Standalone Python simulation and figure-generation script for a two-level hierarchical DRL scheduler.

## Local run

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
python "untitled1 (1).py"
```

Generated figures and results are intentionally ignored by Git.

## K3s cluster run

The supplied Kubernetes job uses a locally imported container image and writes to `/cluster-results/hierarchical-drl-scheduler` on the existing shared cluster storage. This program is CPU-only and currently runs as one Kubernetes job; it does not distribute its training across nodes.
