# Using flask (which is a python thing)
from flask import Flask
# app is equal to the imported flask 
app = Flask(__name__)

# When user goes to '/' return "Hello World"
@app.route('/')
def home():
    return "Hello world!"

# Runs the app on port 5000 locally 
if __name__ == '__main__':
    app.run(port=5000, host='0.0.0.0', debug=True)