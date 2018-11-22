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

@route('/heatDemo')
def login():
  return redirect('heatDemo/control')


@route('/values/<value>', method='POST')
def postData(value):
  if value == 'heat':
    global curPercent
    return 'OFF'
  elif value == 'lights_B':
    return 'OFF' 
  elif value == 'lights_T':
    return 'OFF' 
  elif value == 'fans':
    return 'OFF' 
  elif value == 'pc':
    return 'ON'  # gotta do somin bout that lol
  else:
    print('nothing posted')


@route('/relayControl/<relay>', method='PUT')
def relayControl(relay):
  try:
    if relay == 'pc':
      pass
    elif relay == 'lights_B':
      pass
    elif relay == 'lights_T':
      pass
    elif relay == 'fans':
      pass
    else:
      print('no gpio actions')
  except:
    print(sys.exc_info()[0])


@route('/submit/<status>/<temp>', method='PUT')
def submit(status, temp):
  if status == 'ON':
    print('------- heating turned on --------')
  else:
    print('------- heating turned off --------') 
  global curPercent
  curPercent = temp
  # os.system('sudo printf "%s, %s" >> ../val.txt' %(status,temp))
  # serial.Serial('/dev/ttyACM0', 9600).write('%s' %(temp))

# @route('/heatDemo/backToLogin')
# def backToLogin():
#   if request.get_cookie("account", secret=key):
#     response.set_cookie("account", '', expires=0)
#   redirect('/heatDemo/login')


@route('/heatDemo/control')
def control():
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
