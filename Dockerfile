from python:3.9-buster

WORKDIR /app

Copy requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

Copy . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE  5000

CMD [ "flask", "run" ]