FROM python:3.8-slim-buster
WORKDIR /service
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . ./
ENTRYPOINT [ "python3", "app.py" ]