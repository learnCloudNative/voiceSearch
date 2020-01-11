FROM python:3.7
WORKDIR /app
COPY . /app
RUN pip install  portaudio
RUN pip install pyaudio
RUN pip install speechrecognition
RUN pip install flask 
RUN pip install flask-cors
RUN pip install requests
EXPOSE 5000
ENV FLASK_APP /app/voice_app.py
CMD flask run --host=0.0.0.0
