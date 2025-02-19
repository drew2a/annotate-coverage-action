[![Build and Test](https://github.com/drew2a/annotate-coverage-action/actions/workflows/ci.yml/badge.svg)](https://github.com/drew2a/annotate-coverage-action/actions/workflows/ci.yml)


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

### Example of added annotations
![image](https://github.com/user-attachments/assets/7de7ac76-f55d-46e5-ab11-b01538a2c673)
