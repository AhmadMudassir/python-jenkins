FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && \
    rm -rf ~/.cache/pip
    
COPY . .

EXPOSE 3001

CMD ["python3", "app.py"]
