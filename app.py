import os, subprocess, sys  # , serial
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

@route('/index')
def index():
  return template('oldMain')

@route('/about')
def index():
  return template('about')


''' ------------- heat control demo stuff ------------- '''
curPercent = 50
key = 'OD{gxX:Q3lmR:Y1}1[(cQ{yE"0[7v`'  # wouldnt be saved as plainText in real deployment
info = ['user', 'password']

@route('/heatDemo')
def login():
  # global key
  # username = request.get_cookie("account", secret=key)
  # if username:
  #   return redirect('heatDemo/control')
  # else:
  #   return redirect('heatDemo/login')
  return redirect('heatDemo/control')


# @route('/heatDemo/login', method=["POST","GET"])
# def do_login():
#   global key
#   user = request.get_cookie("account", secret=key)
#   if not user:
#     username = request.forms.get('username')
#     if username:
#       password = request.forms.get('password')
#       if username == info[0] and password == info[1]:
#         response.set_cookie("account", username, secret=key)
#         return redirect('/heatDemo/control') # template("<p>Welcome {{name}}! You are now logged in.</p>", name=username)
#       else:
#         return template('login', error='Incorrect username or password')
#   return template('login', error=None)


# @route('/heatDemo/backToLogin')
# def backToLogin():
#   if request.get_cookie("account", secret=key):
#     response.set_cookie("account", '', expires=0)
#   redirect('/heatDemo/login')


@route('/heatDemo/control')
def control():
  global key
  global curPercent
  heat = 'OFF'
  lights_T, lights_B, fans, pc = 'OFF', 'OFF', 'OFF', 'OFF'  # 'N/A' shows yellow
  return template('control', heat=heat, curPercent=curPercent, lights_T=lights_T, lights_B=lights_B, fans=fans, pc=pc)


@route('/heatDemo/shopping')
def ShoppingList():
  return template('ShoppingList')


@route('/heatDemo/textrepeater')
def TextRepeater():
  return template('TextRepeater')

''' ------------- heat control demo stuff end ------------- '''


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 4000))
  run(host='127.0.0.1', port=port, reloader=True, threaded=False, debug=True)
