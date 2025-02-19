# Annotate Coverage Action

This GitHub Action adds annotations for uncovered lines in PRs based on a coverage report.

## Usage

```yaml
- name: Run Tests
  run: |
    poetry run pytest --cov --cov-report=xml --cov-report=term-missing

- name: Compare coverage
  run: |
    poetry run diff-cover coverage.xml --compare-branch=origin/main --json-report=diff_coverage.json

- name: Annotate uncovered lines
  uses: drew2a/annotate-coverage-action@v1
  with:
    json_path: "diff_coverage.json"
```