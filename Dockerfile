FROM python:3.11-slim

WORKDIR /opt/app

# Copy requirements
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy package folder
COPY simple_interest_calculator/ ./simple_interest_calculator/

# Set Python path
ENV PYTHONPATH=/opt/app

# Run the main module
CMD ["python", "-m", "simple_interest_calculator.calculator"]
