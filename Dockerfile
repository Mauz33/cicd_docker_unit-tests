FROM ubuntu:24.04

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

RUN python3 -m venv .venv

COPY requirements.txt /

RUN /.venv/bin/pip install --upgrade pip

RUN /.venv/bin/pip install -r requirements.txt

COPY main.py /

CMD ["/.venv/bin/flask", "--app", "main", "run", "--host=0.0.0.0"]