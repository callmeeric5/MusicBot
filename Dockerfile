

# Use the official Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN apt-get update && \
    apt-get install -y gcc python3-dev
RUN pip install -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Expose the port Streamlit is running on
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "💬_Chat.py"]


