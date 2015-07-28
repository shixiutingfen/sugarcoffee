from myapp import app
from flask import render_template

@app.route('/')
@app.route('/home')
def home():
    return render_template("index.html",title = 'Home')

@app.route('/about')
def about():
	return render_template("about.html",title = 'About')

@app.route('/learn')
def learn():
    return render_template("learn.html",title = 'learn')

@app.route('/portfolio')
def portfolio():
    return render_template("portfolio4.html",title = 'portfolio')

@app.route('/bloglist')
def bloglist():
    return render_template("blog.html",title = 'bloglist')

@app.route('/blogdetail')
def blogdetail():
    return render_template("blog-single.html",title = 'blogdetail')