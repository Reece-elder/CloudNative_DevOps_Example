from flask import Flask
from os import getenv

app = Flask(__name__)

@app.route('/')
def hello():
  name = getenv('MY_NAME')
  return f"Hello Internet, my name is {name}"

if __name__=='__main__':
  app.run(host='0.0.0.0', port=5000, debug=True)