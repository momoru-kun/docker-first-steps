from flask import Flask # Import flask

app = Flask(__name__) # Create Flask instance

@app.route('/') # Init root route
def hello():
    # View - return simple html to client
    return '<h1 style="color: #003f8c"> Hello Docker world! </h1>'

