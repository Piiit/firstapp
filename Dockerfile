FROM python:3.9-alpine AS base
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_ENV="docker"
ENV FLASK_APP=src/main.py
EXPOSE 5000

# Development Stage
FROM base AS development
# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1
# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1
CMD [ "python", "main.py" ]

# Production Stage
FROM base AS production
RUN pip install --no-cache-dir gunicorn
COPY src/ .
CMD ["gunicorn", "--reload", "--bind", "0.0.0.0:5000", "main:app"]
