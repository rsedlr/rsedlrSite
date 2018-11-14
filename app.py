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
  return redirect('main')


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 4000))
  run(host='0.0.0.0', port=port, reloader=True, threaded=False, debug=True)
