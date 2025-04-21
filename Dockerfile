FROM python:3.9-slim-buster

WORKDIR /app


COPY . .

RUN pip install --no-cache-dir -r requirements.txt && \
    rm -rf ~/.cache/pip
 
RUN pytest test_app.py    

EXPOSE 3001

CMD ["python3", "app.py"]
