# -*- coding: utf-8 -*-

# -*- coding: utf-8 -*-

from flask import url_for, Markup
from flask.ext.sqlalchemy import SQLAlchemy, BaseQuery
from myapp import app
from datetime import datetime

db=SQLAlchemy(app)

class Article(db.Model):
	__tablename__='t_article'
	
	def __init__(self, arg):
		super(Article, self).__init__()
		self.arg = arg
		