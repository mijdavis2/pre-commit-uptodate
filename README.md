# pre-commit-uptodate

Make sure your feature branch is up to date with master before making a commit.

> See https://pre-commit.com/ for more info on pre-commit framework.


### Using pre-commit-hooks with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
- repo: https://github.com/mijdavis2/pre-commit-uptodate
  rev: 0.1.0  # Use a git tag or sha to point to
  hooks:
  - id: uptodate
```
