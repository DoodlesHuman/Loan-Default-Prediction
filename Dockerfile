# Use the official Python 3.11 slim image
FROM python:3.10-slim

# Install build dependencies

RUN apt-get update && \
    apt-get install -y build-essential pkg-config ninja-build && \
    rm -rf /var/lib/apt/lists/*


# Set the working directory in the container
WORKDIR /app

# Copy requirements file into the container
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files into the container
COPY . /app

# Expose port for Jupyter Notebook
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

