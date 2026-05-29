# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy our HTML file into the container
COPY index.html .

# Expose port 5000
EXPOSE 5000

# Start a simple HTTP server when the container launches
CMD ["python", "-m", "http.server", "5000"]