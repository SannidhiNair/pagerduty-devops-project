# Use official Python runtime
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current folder contents into the container
COPY requirements.txt .
COPY app.py .

# Install any needed packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
