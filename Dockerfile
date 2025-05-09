FROM python:3.10-slim

WORKDIR /app

COPY requirments.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src

CMD ["python3", "-c", "from src.app import add; print(add(2,3))"]
