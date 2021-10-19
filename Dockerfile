FROM python:3.7.2-slim

COPY . .
WORKDIR .

RUN pip install --upgrade pip
RUN pip install flask

ENTRYPOINT ["python", "app.py"]