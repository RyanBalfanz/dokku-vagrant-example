"""
This app comes from Jeff Lindsay's (@progrium) blog:
	http://progrium.com/blog/2013/01/05/executable-tweets-and-programs-in-short-urls/.
"""
import os, urllib2

from flask import Flask, request


app = Flask(__name__)

@app.route("/")
def echo():
	data = urllib2.unquote(request.query_string)
	if ' ' not in data:
		return data.replace('+', ' ')
	else:
		return data

if __name__ == "__main__":
	port = int(os.environ.get('PORT', 5000))
	app.run(host='0.0.0.0', port=port)
