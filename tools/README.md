# tools/analyze_history.py

Mine your Claude Code history to see what you *actually* ask AI for.

## Run

```bash
python3 analyze_history.py
```

Options:

| flag | default | meaning |
|---|---|---|
| `--root` | `~/.claude/projects` | where your Claude Code session logs live |
| `--out` | `intents.txt` | file to write your hand-typed intents to |
| `--samples` | `4` | sample requests printed per intent bucket |

## What it does

1. Walks every `*.jsonl` session log under `--root`.
2. Takes the **first human-typed message** of each session (your opening intent).
3. Separates **automation-generated prompts** (from your own bots/pipelines) from your **hand-typed requests**.
4. Buckets the hand-typed requests by intent and prints the distribution + samples.

## Tune it

- `is_automation()` — signals that a prompt came from your automation, not your hands. Add your agent-role headers / template markers.
- `BUCKETS` — intent keywords (JP + EN). Add the vocabulary of your domain.

## Then

Take your top buckets and turn them into templates using the discipline in [`../protocol.md`](../protocol.md). That's how `suites/recurring-tasks.md` was built — from the author's own distribution (research-heavy).

> Privacy: this reads local logs only and writes a local file. Nothing is sent anywhere.
