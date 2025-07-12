# Step 1: Use base image
FROM python:3.10-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements file and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Step 4: Copy all app code
COPY . .

# Step 5: Run the app
CMD ["python", "app.py"]
