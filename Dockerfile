FROM ubuntu:24.04

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

RUN python3 -m venv .venv
RUN /.venv/bin/pip install --upgrade pip && /.venv/bin/pip install flask==3.0.*

#reqiremrnts Добавить

COPY main.py /

CMD ["/.venv/bin/flask", "--app", "main", "run", "--host=0.0.0.0"]