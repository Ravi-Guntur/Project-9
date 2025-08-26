FROM python:3.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app
COPY src/app.py .

# Expose the Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
