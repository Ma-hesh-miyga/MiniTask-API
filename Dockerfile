
# Use Python 3.12 slim image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# TODO 1: Copy requirements.txt into the image
COPY requirements.txt .

# TODO 2: Install Python dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

# TODO 3: Copy app folder into /app/app/
COPY app/ ./app/

# TODO 4: Document the API port
EXPOSE 8000

# TODO 5: Start Uvicorn
CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
