
christmas = open('christmas.txt', 'w')
christmas.writelines('0')

timer = False
while timer == False:
  inpt = str(input("Enter \'deploy\' to go live\n> "))
  if inpt.upper() == 'DEPLOY':
    print('whoop whoop we are go for lift off!!!!!!!!!!!!\n')
    christmas.write('1')
    timer = True
  else:
    print('\ninvalid command...\n')

christmas.close()