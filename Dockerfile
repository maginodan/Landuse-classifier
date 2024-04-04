# Use the official Python image as a base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir tensorflow
RUN pip install --no-cache-dir flask
RUN pip install --no-cache-dir pillow
RUN pip install --no-cache-dir -r requirements.txt



# RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 5000 to the outside world
EXPOSE 80

# Command to run the Flask application
CMD ["python", "app.py"]
