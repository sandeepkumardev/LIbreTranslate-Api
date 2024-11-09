# Base image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose port
EXPOSE 5000

# Command to run the application
CMD ["python", "main.py"]