FROM python:3.7
WORKDIR /app
COPY . /app
RUN CHMOD 777 -R /app
RUN apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0
RUN apt-get install ffmpeg libav-tools
RUN apt-get install python-pyaudio
RUN pip install speechrecognition
RUN pip install flask 
RUN pip install flask-cors
RUN pip install requests
EXPOSE 5000
ENV FLASK_APP /app/voice_app.py
CMD flask run --host=0.0.0.0
