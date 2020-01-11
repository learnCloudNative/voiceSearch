FROM python:3.7
WORKDIR /app
COPY . /app
RUN chmod 777 -R /app
RUN apt-get update -y
RUN apt-get install -y libasound2-dev
RUN apt-get install -y libasound-dev 
RUN apt-get install -y portaudio19-dev 
RUN apt-get install -y libportaudio2 
RUN apt-get install -y libportaudiocpp0
RUN apt-get install -y ffmpeg 
RUN apt-get install -y python-pyaudio
RUN pip-install PyAudio
RUN pip install speechrecognition
RUN pip install flask 
RUN pip install -U flask-cors
RUN pip install requests
EXPOSE 5000
ENV FLASK_APP /app/voice_app.py
CMD flask run --host=0.0.0.0
