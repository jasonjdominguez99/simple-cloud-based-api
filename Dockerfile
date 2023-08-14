FROM python:3.8-slim-buster

WORKDIR /simple-cloud-based-api

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "3000"]