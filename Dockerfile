ROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /code

# Copy requirements first to leverage Docker cache
COPY requirements.txt /code/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the app folder into the container
COPY ./app /code/app

# Command to run the application using Uvicorn
# This matches your manual command: uvicorn app.main:app --reload
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
