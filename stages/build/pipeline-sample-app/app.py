import os

from flask import *

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False

app.config['APP_VERSION'] = 'SNAPSHOT' if os.getenv('APP_VERSION') is None else os.getenv('APP_VERSION')
app.config['FEATURE_A'] = os.getenv('FEATURE_A')

@app.route('/')
def index():
  features = []

  if app.config['FEATURE_A'] is not None:
    features.append('A')

  return render_template("index.html", features=features, version=app.config['APP_VERSION'])

@app.route('/health')
def health():
    return 'OK'
