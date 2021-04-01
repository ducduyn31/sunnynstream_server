FROM python:3

COPY . /app

WORKDIR /app

RUN apt install libavdevice-dev libavfilter-dev libopus-dev libvpx-dev pkg-config && pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["manage.py", "run"]