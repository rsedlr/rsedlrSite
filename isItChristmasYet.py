timer = False
if __name__ == "__main__":  
  while timer == False:
    inpt = str(input("Enter \'deploy\' to go live\n> "))
    if inpt.upper() == 'DEPLOY':
      print('whoop whoop we are go for lift off!!!!!!!!!!!!')
      timer = True
    else:
      print('\ninvalid command...\n')