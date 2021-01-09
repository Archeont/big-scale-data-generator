FROM python:3.7
ENV PYTHONUNBUFFERED 1
WORKDIR /bsdg_service
COPY requirements.txt /bsdg_service/requirements.txt
RUN pip install -r requirements.txt
COPY . /bsdg_service

CMD python manage.py runserver 0.0.0.0:8000
