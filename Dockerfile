FROM python:3.11-slim

WORKDIR /app
ENV MPLBACKEND=Agg \
    PYTHONUNBUFFERED=1

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ["untitled1 (1).py", "/app/scheduler.py"]

CMD ["sh", "-c", "mkdir -p /output && cd /output && python /app/scheduler.py"]
