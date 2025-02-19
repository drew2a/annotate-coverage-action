FROM python:3.9-slim

WORKDIR /app

COPY annotate_coverage.py /app/annotate_coverage.py

ENTRYPOINT ["python", "/app/annotate_coverage.py"]
