# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2025-02-19

Improve test coverage annotation:

* The CI workflow has been updated to use a local action for annotating test coverage. The annotations are now collected
  into a single string and written to an output file, which is then compared with the expected output.

## [0.1.0] - 2025-02-19

### Added

- Initial project setup with core files:
    - GitHub Actions workflow configuration (ci.yml)
    - Docker configuration (Dockerfile)
    - Action configuration (action.yml)
    - Main script (annotate_coverage.py)
    - Test coverage data (tests/test_coverage.json)
    - Project configuration files (.gitignore, IDE settings)
    - Documentation (README.md, LICENSE)
    - This CHANGELOG.md
