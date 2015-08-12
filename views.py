from myapp import app
from flask import render_template, url_for, redirect, request, flash, session, g, abort
from model import User
from flask import  jsonify
import json,utils

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

@app.route('/login', methods=['GET','POST'])
def login():
    requeststr = request.query_string
    params=utils.getparam(requeststr)
    username=params['username']
    return render_template("index.html",title = 'Home',action='/login')

@app.route('/regiest', methods=['GET','POST'])
def regiest():
    user = User()
    user.username = request.form['username']
    user.password=utils.getenctry(request.form['password'])
    user.email = request.form['email']
    user.adduser()
    session['username'] = user.username
    flash("Welcome, %s!" % session['username'])
    return redirect(url_for('home'))
    #return (jsonify(user=user.to_json()))