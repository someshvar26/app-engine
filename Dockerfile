# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY main.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for local testing
EXPOSE 8080

# Run the app
CMD ["python", "main.py"]
