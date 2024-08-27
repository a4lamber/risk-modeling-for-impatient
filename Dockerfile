FROM python:3.11.9-alpine3.20

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Run mkdocs serve when the container launches
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]