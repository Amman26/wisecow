# Use an appropriate base image (e.g., Python if the app is written in Python)
FROM python:3.8-slim

RUN mkdir /app

# Set the working directory inside the container
WORKDIR /app/

ADD . /app/

# Copy the application code from your computer to the container
COPY . /app

# Install any necessary dependencies (assuming there's a requirements.txt file)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the app will run on (assuming it runs on port 8000)
EXPOSE 8000

# Command to run the application
CMD ["python", "/app/app.py"]
