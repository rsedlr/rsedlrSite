import os, subprocess, sys #, cherrypy # , serial
from bottle import route, run, template, static_file, redirect, request, response, put, post, get, error
from datetime import datetime


# @error(404)
# def error404(error):
#   return template('error404')


@route('/static/<filepath:path>')
def server_static(filepath):
  return static_file(filepath, root='./templates')


@route('/')
def main():
  return template('main')


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 3000))
  run(host='127.0.0.1', port=port, reloader=True, threaded=False, debug=True)
