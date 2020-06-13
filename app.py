# -*- coding: utf-8 -*-
import os, subprocess, sys, smtplib, bottle, sqlite3, logging, requests  # , serial
from bottle import route, run, template, static_file, redirect, request, response, put, post, get, error, hook, Bottle
from datetime import datetime

try: 
  from cardMessages import christmasMessage, MothersMessage, birthdayMessage
except Exception as e:
  print(e)

try:
  import cherrypy
except Exception as e:
  print(e)

try:
  import git
except Exception as e:
  print(e)

# try:
#   from email.MIMEMultipart import MIMEMultipart
#   from email.MIMEText import MIMEText 
# except Exception as e: 
#   print(e)

try:
  dev = True if '-dev' in sys.argv else False
  gitQuit = True if '-wle' in sys.argv else False
except:
  dev = False
  gitQuit = False

try:
  file = open('info.txt', 'r')
  telegram_token = file.readline()[:-1]
  telegram_chat = file.readline()[:-1]
  file.close()
  telegramWorking = True
  print('Telegram working')
  print('Token:%s\nID:%s' %(telegram_token, telegram_chat))
except:
  telegram_token, telegram_chat = '', ''
  telegramWorking = False
  print('Telegram NOT working')

demo = ['BLUE', 'RED', 'PINK', 'PURPLE', 'BLACK', 
        'ORANGE', 'GREY', 'CUSTOM BACKGROUND', 'NAME DEMO']
key = 'beepbopboop'  #not normally kept in cleartext but fine for demo


if not dev:
  logging.basicConfig(level=logging.DEBUG, 
                      format='%(asctime)s - %(message)s', 
                      datefmt='%I:%M:%S%p %d/%m/%Y')

  @hook('after_request')
  def enable_cors():
    client_ip = request.environ.get('HTTP_X_FORWARDED_FOR') or request.environ.get('REMOTE_ADDR')
    stat = (" statCode(" + str(response.status_code) + ")") if str(response.status_code) != "200" else ""
    logging.debug("IP(" + client_ip + ") method(" + request.method + ") path(" + request.path + ")" + stat)


@error(404)
def error404(error):
  return template('error404')


@route('/static/<filepath:path>') 
# @route('/staticIco/<filepath:path>') 
def server_static(filepath):
  return static_file(filepath, root='./assets')


@route('/sitemap') 
def serveSitemap():
  return static_file('sitemap.xml', root='./assets')


@route('/computingWriteup')  # TEMP
def computing():
  return '<a>https://1drv.ms/f/s!Al19yIlgeZ-ThaYPL_m5cExbzMjmBg</a>'


@route('/')
def main():
  return template('main.min')


# @route('/test')
# def test():
#   return template('test')


@route('/contact', method='POST')
def contact():
  try:
    name = request.forms.get('name') or '[empty]'
    email = request.forms.get('email') or '[empty]'
    message = request.forms.get('message') or '[empty]'
  except Exception as e:
    print(e)

  msgContents = "Portfolio contact from: %s,\n%s\nfrom %s" %(name, message, email)
  if telegramWorking:
    requests.get("https://api.telegram.org/bot" + telegram_token + "/sendMessage?chat_id=" + telegram_chat + "&text=" + msgContents)
    print('\n************ Telegram Sent! ************\n')
  else:
    print('\n************ ERROR getting Telegram bot credentials! ************\n')
  el = open('emailLog.txt', 'a')
  el.writelines(msgContents)
  el.close()


@route('/dadsGift')
def dadsGift():
  return template('dadBirthday')


''' ------------- heat control demo stuff ------------- '''
onOff = {False: 'OFF', True: 'ON'}
valuesDict = {'curPercent': 50, 'heat': False, 'h_heat': False, 'pc': False, 
              'lights_T': False, 'led_C': False, 'led_D': False, 'fans_D': False,
              'fans_T': False, 'led_C_col': 'rb', 'led_D_col': 'rb'}


@route('/heatDemo')
def login():
  return redirect('heatDemo/control')


@route('/values/<value>', method='POST')
def postData(value):
  global valuesDict
  if value == 'heat':
    return onOff[valuesDict['heat']], '-', valuesDict['curPercent']
  elif value == 'lights_B':
    return onOff[valuesDict['lights_B']]
  elif value == 'lights_T':
    return onOff[valuesDict['lights_T']]
  elif value == 'fans':
    return onOff[valuesDict['fans']]
  elif value == 'pc':
    return onOff[valuesDict['pc']]
  elif value == 'led':
    return valuesDict['led_col']
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
    elif relay[0:4] == 'led_':
      valuesDict['led_col'] = relay[4:]
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


@route('/heatDemo/control')
def control():
  global valuesDict
  return template('heatDemo/control', heat=onOff[valuesDict['heat']], curPercent=valuesDict['curPercent'],
                             lights_T=onOff[valuesDict['lights_T']], led_D=onOff[valuesDict['led_D']], 
                             led_C=onOff[valuesDict['led_C']], fans_D=onOff[valuesDict['fans_D']],
                             fans_T=onOff[valuesDict['fans_T']], pc=onOff[valuesDict['pc']])


@route('/heatDemo/h/control')
def h_heatdemo():
  global valuesDict
  return template('heatDemo/hControl', heat=onOff[valuesDict['h_heat']])


@route('/heatDemo/shopping')
def ShoppingList():
  return template('heatDemo/ShoppingList')


@route('/heatDemo/snow')
def snow():
  return template('heatDemo/snow')


@route('/heatDemo/textrepeater')
def TextRepeater():
  return template('TextRepeater')

''' ------------- heat control demo stuff end ------------- '''
''' --------------- card start --------------- '''

@route('/christmas')
@route('/christmas/<name>')
def christmas(name=''):
  name = name.replace('_', ' ')
  message = christmasMessage(name)
  nowTime = datetime.now()
  christmasTime = datetime(2018, 12, 25, 0)
  timeDiff = christmasTime - nowTime
  if timeDiff.total_seconds() <= 0:
    return template('cards/christmasCard-M', name=name, message=message)
  if name != '':
    name += ', ' 
  return template('cards/notChristmas', name=name)


@route('/christmasDemo')
@route('/christmasDemo/<name>')
def christmas(name=''):
  name = name.replace('_', ' ')
  message = christmasMessageDemo(name)
  if name.upper() in demo:
    colour = name
    name = 'Demo'
  else:
    colour = None
  return template('cards/christmasCardDemo', name=name, colour=colour, message=message)

# @route('/MothersDay>')
@route('/MothersDay')
@route('/MothersDay/<name>')
def MumsDay(name=''):
  name = name.replace('_', ' ')
  message = MothersMessage(name)
  return template('cards/card_mothersDay', name=name, message=message)


@route('/birthday')
@route('/birthday/<name>')
def MumsDay(name=''):
  name = name.replace('_', ' ')
  message = birthdayMessage(name)
  return template('cards/card_birthday', name=name, message=message)


# @route('/shhhnoonecanknowiusethis')
# def shhh():
#   return template('wrappingPaper')


# @route('/wallpaper')
# def wallpaper():
#   return template('wrappingPaper')


def christmasMessageDemo(name):
  nameUp = name.upper()
  colours = ['BLUE', 'RED', 'PINK', 'PURPLE', 'BLACK', 'ORANGE', 'GREY']
  prefix = ['MR', 'DR' 'MS', 'MRS', 'MISS']   
  namePref = name.split(' ')[0]
  if namePref.upper() not in prefix:      #only splits if no prefix is present at start of name
    name = name.split(' ')[0]
  messageTpl = '''
      %s<br><br>
      <br>     
      Have a merry christmas,<br>
      And a happy new year!<br>
      %s
      <br><br>
      %s
      '''
  if nameUp in colours:
    message = '''
      <br>
      This is a %s background demo
      <br><br><br>     
      Have a merry christmas,<br>
      And a happy new year!<br>
      <br><br>
      ''' % (name)
  elif nameUp == 'NAME DEMO':
    message = '''
      This is a custom message demo<br><br>
      the text can be completely altered<br>
      and a button can even be put in if you want to redirect them to an online gift for example<br>
      <br><br>
      '''
  else:
    message = messageTpl % ((name + ',') if name != '' else '', '<br><br><br>', 'From Reiss')
  return message

''' --------------- card end --------------- '''


@route('/h578smnch3mkx83mnd7y4bd8eh3oix8w3j', method='GET')  # POST
def gitPull():
  git.cmd.Git('/var/www/rsedlrSite').pull()
  # git.cmd.Git('/var/www/rsedlrSite').fetch()
  # os.system('sudo git reset --hard origin/master')
  print('\n************ Git pull done ************\n')
  # print('\n************ git update available ************\n')
  if gitQuit: quit()


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 3000))
  # run_decoupled(app, '0.0.0.0', 80)
  host = '127.0.0.1'  # 127.0.0.1 '0.0.0.0'
  if dev:
    print('********* running in development mode *********')
    run(host='127.0.0.1', port=3000, reloader=True, threaded=True, debug=True)  # 127.0.0.1 :8080
  else:
    try:
      run(host=host, port=port, server='cherrypy', reloader=True)  # 127.0.0.1
    except Exception as e:
      print(e + '\ncherryPy failed, defaulting to ref server:')
      run(host=host, port=port, reloader=True, threaded=True, debug=False)  # 127.0.0.1



'''
user: request.environ.get('REMOTE_USER', '')
url: request.url
acc id: account_id

    # msg = MIMEMultipart()
    # fromaddr = "rsedlr98766@gmail.com"
    # toaddr = "rsedlr@protonmail.com"
    # msg['From'] = fromaddr
    # msg['To'] = toaddr
    # msg['Subject'] = "Portfolio contact from %s" % name
    # body = message + ('\nFrom: %s (%s)' %(email, name))
    # msg.attach(MIMEText(body, 'plain'))
    # server = smtplib.SMTP('smtp.gmail.com', 587)
    # server.starttls()
    # server.login(fromaddr, info)
    # text = msg.as_string()
    # server.sendmail(fromaddr, toaddr, text)
    # server.quit()

'''