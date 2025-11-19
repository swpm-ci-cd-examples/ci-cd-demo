# Use official Python image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /src

# Install dependencies
COPY requirements.txt /src/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY ./src/ /src/

# Expose port
EXPOSE 8000

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
