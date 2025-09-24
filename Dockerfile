FROM python:3.9-slim

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY .  /app/

# Install packages from requirements.txt

RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

# Exposer le port (celui que tu utilises pour Flask)
EXPOSE 5001

CMD ["python", "app.py"]