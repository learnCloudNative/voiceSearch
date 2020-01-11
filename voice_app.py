#!flask/bin/python
from flask import Flask, jsonify
import requests
from flask import send_file
import io
import speech_recognition as sr
from flask_cors import CORS
import time


voice_app = Flask(__name__)
CORS(voice_app)


@voice_app.route('/voiceSearch/', methods=['GET'])
def get_voice():
	r = sr.Recognizer()
	with sr.Microphone() as source:
		r.adjust_for_ambient_noise(source, duration=0)
		audio = r.listen(source)
		try:
			audio_text=r.recognize_google(audio)
			time.sleep(3)
			print(audio_text)
		except:
			pass;
	return audio_text
	

if __name__ == '__main__':
    voice_app.run(host='0.0.0.0')
