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

valuesDict = {'curPercent':50, 'heat': False, 'lights_B': False, 'lights_T': False, 'fans': False, 'pc': False}
onOff = {False: 'OFF', True: 'ON'}


@route('/heatDemo')
def login():
  return redirect('heatDemo/control')


@route('/values/<value>', method='POST')
def postData(value):
  global valuesDict
  if value == 'heat':
    return onOff[valuesDict['heat']], '-', valuesDict['curPercent']
  elif value == 'lights_B':
    return valuesDict['lights_B']
  elif value == 'lights_T':
    return valuesDict['lights_T']
  elif value == 'fans':
    return valuesDict['fans']
  elif value == 'pc':
    return valuesDict['pc']
  else:
    print('nothing posted')


@route('/relayControl/<relay>', method='PUT')
def relayControl(relay):
  global valuesDict
  try:
    if relay == 'pc':
      valuesDict['pc'] = not valuesDict['pc']
    elif relay == 'lights_B':
      valuesDict['lights_B'] = not valuesDict['lights_B']
    elif relay == 'lights_T':
      valuesDict['lights_T'] = not valuesDict['lights_T']
    elif relay == 'fans':
      valuesDict['fans'] = not valuesDict['fans']
    else:
      print('no gpio actions')
  except:
    print(sys.exc_info()[0])


@route('/submit/<status>/<temp>', method='PUT')
def submit(status, temp):
  global valuesDict
  valuesDict['heat'] = True if status == 'ON' else False
  valuesDict['curPercent'] = temp
  # os.system('sudo printf "%s, %s" >> ../val.txt' %(status,temp))
  # serial.Serial('/dev/ttyACM0', 9600).write('%s' %(temp))

# @route('/heatDemo/backToLogin')
# def backToLogin():
#   if request.get_cookie("account", secret=key):
#     response.set_cookie("account", '', expires=0)
#   redirect('/heatDemo/login')


@route('/heatDemo/control')
def control():
  global valuesDict
  return template('control', heat=onOff[valuesDict['heat']], curPercent=valuesDict['curPercent'], lights_T=valuesDict['lights_T'], lights_B=valuesDict['lights_B'], fans=valuesDict['fans'], pc=valuesDict['pc'])


@route('/heatDemo/shopping')
def ShoppingList():
  return template('ShoppingList')


@route('/heatDemo/textrepeater')
def TextRepeater():
  return template('TextRepeater')
  

''' ------------- heat control demo stuff end ------------- '''


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 4000))
  run(host='127.0.0.1', port=port, reloader=True, threaded=False, debug=False)
