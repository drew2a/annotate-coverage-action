FROM python:3.9-slim

WORKDIR /app

RUN adduser --disabled-password --gecos "" myuser

USER myuser

COPY annotate_coverage.py /app/annotate_coverage.py

ENTRYPOINT ["python", "/app/annotate_coverage.py"]
