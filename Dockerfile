FROM python:3.11

# Expose port 5000 to allow external access
EXPOSE 5000

# Set the working directory inside the container
WORKDIR /app

# Install necessary Python packages, including Flask and Gunicorn
RUN pip install flask gunicorn

# Copy all the application files to the container
COPY . .

# Use Gunicorn to run the Flask app in production mode
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]