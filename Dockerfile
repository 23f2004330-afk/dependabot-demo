# Use Python 3.11 slim as base
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements if you have them
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files
COPY . .

# Default command
CMD ["python", "--version"]
