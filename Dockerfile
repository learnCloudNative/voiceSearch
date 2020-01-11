FROM continuumio/anaconda
WORKDIR /app
COPY . /app
RUN conda install -c anaconda portaudio
RUN conda install -c anaconda pyaudio
RUN conda install -c conda-forge speechrecognition
RUN conda install -c conda-forge flask 
RUN conda install -c conda-forge flask-cors
RUN conda install -c conda-forge requests
EXPOSE 5000
ENV FLASK_APP /app/app.py
CMD flask run --host=0.0.0.0
