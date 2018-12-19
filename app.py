import os, subprocess, sys, git  # , serial
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

@route('/test')
def test():
  return template('test')

@route('/about')
def about():
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
    return onOff[valuesDict['lights_B']]
  elif value == 'lights_T':
    return onOff[valuesDict['lights_T']]
  elif value == 'fans':
    return onOff[valuesDict['fans']]
  elif value == 'pc':
    return onOff[valuesDict['pc']]
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
  return template('control', heat=onOff[valuesDict['heat']], curPercent=valuesDict['curPercent'], lights_T=onOff[valuesDict['lights_T']], lights_B=onOff[valuesDict['lights_B']], fans=onOff[valuesDict['fans']], pc=onOff[valuesDict['pc']])


@route('/heatDemo/shopping')
def ShoppingList():
  return template('ShoppingList')


@route('/heatDemo/textrepeater')
def TextRepeater():
  return template('TextRepeater')
  

''' ------------- heat control demo stuff end ------------- '''
''' --------------- christmas card start --------------- '''

@route('/christmas')
@route('/christmas/')
@route('/christmas/<name>')
def christmas(name=''):
  nameUp = name.upper()
  name = name.replace('_', ' ')
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
      <br><br><br>
      %s
      '''
  if nameUp == 'MUM':
    message = '''
      To Mum,<br><br>
      <br>     
      Wishing you a brilliant christmas,<br>
      while saving the world by not using paper :)<br>
      <br>
      Hang in there, you can eat again soon!<br>
      <br>
      Lots of love Reiss xxx
      ''' 
  elif nameUp == 'DAD':
    message = '''
      To Dad,<br><br> 
      <br>     
      Not like this was much of a surprise for you :) <br>
      Have a great christmas,<br>
      And a brilliant new year!<br>
      <br>
      Can't wait to get back out on the bikes with you :)<br>
      <br>
      lots of love from Reiss
      ''' 
  elif nameUp == 'EVEY':
    message = messageTpl %('To stinkie-wee-wee,', '<br>Pink is your fav colour right? <br>', 'Love from Reiss')
  elif nameUp == 'JOEY':
    message = messageTpl %('To Jobby,', '<br>At least you have a good excuse for being a sloth today :)', 'Love from Jobby Junior')
  elif nameUp == 'NAN_A':
    message = messageTpl %('To Nanny Anne,', '<br>Hope you got all the indoor slippers you wanted :)<br>', 'Lots of love from Reiss')
  elif nameUp == 'GRANDAD_B':
    message = messageTpl %('To the best grandad that ever lived,', '<br>Miss you more and more each day :(<br>hope you have a great christmas wherever you are<br>', 'Lots of love from Reiss')
  elif nameUp == 'GRANDAD':
    message = messageTpl %('To grandad,', '<br>Cant wait to see you tomorrow :)<br>', 'Lots of love from Reiss')
  elif nameUp == 'TASH':
    message = messageTpl %('To Tash,', '<br>Good luck with your final year at uni, i\'m sure you\'ll smash it!', 'Lots of love from Reiss')
  elif nameUp == 'EVIE':
    message = messageTpl %('To Evie,', '<br>I heard blue was your new favorite colour :)<br>', 'Love from Reiss')
  elif nameUp == 'NAN_M':
    message = messageTpl %('To Nanny M,', '<br>At least you get a chance to sit down this christmas :)<br>', 'Lots of love from Reiss')
  elif nameUp == 'JEL':
    message = messageTpl %('To Jel,', '<br>This one should fit in yer bag nice and easy :)<br>', 'Lots of love from Reiss')
  elif nameUp == 'MR_MULLA':
    message = messageTpl %('To Mr Mulla,', '<br>(Thought it would be easier to code a card than write a load out by hand)', 'From Reiss')      
  elif nameUp == 'MS_AZIZ':
    message = messageTpl %('To Ms. Aziz,', '<br><br>', 'From Reiss<br>(y12 computing class)')      
  elif nameUp == 'FRED':
    message = messageTpl %('To Freddo,', '<br>you shagged a bird yet by any chance?<br>', 'From Reiss')
  elif nameUp == 'BRETT':
    message = messageTpl %('To Tiddles,', '<br>hope its good up that mountain<br>', 'From Reiss')      
  elif nameUp == 'NICOLE':
    message = messageTpl %('To Nicole,', '<br>hope ur christmas is Lush ;)<br>', 'From Reiss') 
  elif nameUp == 'EMILY':
    message = messageTpl %('To Emily,', '<br>not like I showed you this before or anythin<br>', 'From Reiss') 
  elif nameUp == 'MARTINA':
    message = messageTpl %('To Martina,', '<br>Hope u get a new guitar or something musicy :)<br>', 'From Reiss') 
  elif nameUp == 'Laura':
    message = messageTpl %('To Queenie,', '<br>Hope u get a new shank or something :p<br>', 'From Reiss') 
  elif nameUp == 'ZOE':
    message = messageTpl %('To Zoe,', '<br>(i dont know ur address to post a card)<br>', 'From Reiss') 
  elif nameUp == 'AMY':
    message = messageTpl %('To Mudders,', '<br>keep being muddy u muddy person :)<br>', 'From Reiss') 
  elif nameUp == 'AMELIA':
    message = messageTpl %('To Zoe,', '<br>Hope your horse gave u a good shag :)<br>', 'From Reiss') 
  elif nameUp == 'LAWA':
    message = messageTpl %('To Lawa,', '<br>Miss u Lawa :(<br>', 'From Reiss') 
  elif nameUp == 'NAT':
    message = messageTpl %('To Na-Fanny-Well,', '<br>good luck with ur IB bud :)<br>', 'From Reiss') 
  elif nameUp == 'KIWA':
    message = messageTpl %('To Makeup,', '<br>hope u get all the makeup u wanted :)<br>', 'From Reiss') 
  elif nameUp == 'BODO':
    message = messageTpl %('To Bodo,', '<br>( dw its python backend :p )<br>', 'From Reiss') 
  elif nameUp == 'REICE':
    message = messageTpl %('To Reice,', '<br>Get well soon mate<br>', 'From Reiss')      
  elif nameUp == 'IZZY':
    message = messageTpl %('To Dizzy Fizzy Izzy,', '<br>Tell pandi I miss her<br>', 'From Kawala **Reiss (sorry)')      
  elif nameUp == 'MR_BOYCE':
    message = messageTpl %('To Boycie,', '<br>Hope it\'s not too hot out there :)<br>', 'From Reiss')      
  elif nameUp == 'WILL':
    name = 'Bill'
    message = messageTpl %('sorry *Will,', '<br>we need to make a project one day soon :)<br>', 'From Reiss')
  elif nameUp == 'JOE_ASH':
    message = messageTpl %('Joe,', '<br>Ya soppy git<br>', 'From Reiss')
  elif nameUp == 'PIXIE':
    message = 'Woof ' * 100 
  else:
    message = messageTpl % ((name + ',') if name != '' else '', '<br><br><br>', 'From Reiss')

  nowTime = datetime.now()
  christmasTime = datetime(2018, 12, 25, 0)
  timeDiff = christmasTime - nowTime
  if timeDiff.total_seconds() <= 0:
    return template('christmasCard-M', name=name, message=message)

  if name != '':
    name += ', ' 

  return template('notChristmas', name=name)


@route('/shhhnoonecanknowiusethis')
def shhh():
  return template('wrappingPaper')

@route('/h162bs5dkjwels9f74nc7r64', method='POST')
def gitPull():
  git.cmd.Git(git_dir).pull()
  # subprocess.call("sudo git pull", shell=True)
  print('doneeee')

# @route('/wallpaper')
# def wallpaper():
#   return template('wrappingPaper')


if __name__ == '__main__':
  port = int(os.environ.get('PORT', 4000))
  run(host='127.0.0.1', port=port, reloader=True, threaded=True, debug=False)


