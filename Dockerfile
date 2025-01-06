FROM python:3.9.21-bookworm

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip && \
  pip install setuptools --upgrade && \
  pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]