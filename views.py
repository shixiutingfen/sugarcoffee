from myapp import app
from flask import render_template
@app.route('/')
@app.route('/index')
def index():
	return "Hello, World!dsadsa"


@app.route('/home')
def home():
    #user = {'nickname': 'Miguel'}
    #posts=[{'author':'shixiuting','title':'husband'},{'author':'yangsaifen','title':'wife'}]
    return render_template("index.html",title = 'Home')

@app.route('/learn')
def learn():
    return render_template("learn.html",title = 'learn')