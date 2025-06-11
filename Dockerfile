# Step 1: Base image
FROM python:3.9-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy dependencies
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Copy app code
COPY . .

# Step 6: Run app
CMD ["python", "app.py"]
