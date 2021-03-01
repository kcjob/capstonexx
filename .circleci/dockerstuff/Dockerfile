FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app
#docker rm $(docker ps -aq)

## Step 2:
# Copy source code to working directory
COPY . /flask_app/webapp.py /app/
COPY . /flask_app/template/ /app/
COPY . /nlib /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install sklearn &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
Expose 80

CMD ["python", "flask_app/webapp.py"]
