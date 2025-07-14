# Base Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy everything to container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables for Flask
ENV FLASK_APP=flaskr
ENV FLASK_ENV=production

# Expose Flask port
EXPOSE 5000

# Command to run the app
CMD ["flask", "run", "--host=0.0.0.0"]
