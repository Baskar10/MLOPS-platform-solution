# Use official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /opt/app-root/src

# Copy requirements first for caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose a port if your application is web-based (optional)
EXPOSE 8080

# Set environment variable for Python to run in unbuffered mode
ENV PYTHONUNBUFFERED=1

# Default command to run your app
CMD ["python", "-m", "simple_interest_calculator.calculator"]