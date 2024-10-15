FROM python:3.9

ENV PORT=8080
ENV GRADIO_SERVER_PORT=${PORT}
ENV GRADIO_SERVER_NAME=0.0.0.0

ARG MY_SECRET
RUN echo $MY_SECRET

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

CMD ["python", "app.py"]
