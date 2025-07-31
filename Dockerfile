FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN adduser --disabled-password appuser && \
    mkdir -p /app && \
    chown -R appuser:appuser /app

USER appuser


RUN apt-get update && \
    apt-get install -y authbind && \
    rm -rf /var/lib/apt/lists/* && \
    touch /etc/authbind/byport/80 && \
    chown appuser /etc/authbind/byport/80 && \
    chmod 755 /etc/authbind/byport/80

EXPOSE 80

CMD ["authbind", "--deep", "python", "manage.py", "runserver", "0.0.0.0:80"]
