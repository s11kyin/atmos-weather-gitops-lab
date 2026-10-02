FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/app.py .
COPY app/templates ./templates
COPY app/static ./static

ARG APP_VERSION=dev
ENV APP_VERSION=${APP_VERSION}

USER 10001:10001

EXPOSE 8080

CMD ["python", "app.py"]