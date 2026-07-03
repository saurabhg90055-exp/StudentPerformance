FROM python:3.13.5-slim-bookworm

# Set working directory
WORKDIR /app

# 1. Copy requirements FIRST to take advantage of Docker layer caching
# (If you don't have a requirements.txt yet, create one and add: awscli, boto3, etc.)
COPY requirements.txt /app/requirements.txt

# 2. Upgrade pip and install Python dependencies cleanly (without OS bloat)
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir awscli

# 3. Copy the rest of your application code
COPY . /app

# 4. Expose the port your YAML maps (8080) so EC2 can route traffic to it
EXPOSE 8080

# 5. Launch the application
CMD ["python", "application.py"]