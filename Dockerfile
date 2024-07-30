# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the image
COPY req.txt .

# Install the dependencies
RUN pip install -r req.txt

# Copy the application code into the image
COPY app.py .

# Expose the port the app runs on
EXPOSE 5001

# Define the command to run the app
CMD ["python", "app.py"]
