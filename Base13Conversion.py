# Base 13 Conversion
# Capital One Python Interview Question

# Given an integer num, return its string representation in base 13.

# In case you don’t use base 13 that much (who does, right?), here’s a quick rundown: just like base 10 uses digits from 0 to 9. But also for 10, 11 and 12, we use the letters A, B, and C.

# For example:

#     9 in base 13 is still "9"
#     10 in base 13 is "A"
#     11 in base 13 is "B"
#     12 in base 13 is "C"
#     13 in base 13 is "10"
#     14 in base 13 is "11"
#     49 in base 13 is "3A" (since 3∗13+10=493∗13+10=49)
#     69 in base 13 is "54" (since 5∗13+4=695∗13+4=69)

# Solution

def conditions(resto):
    if resto == 10:
      var = 'A'
    elif resto == 11:
      var = 'B'
    elif resto == 12:
      var = 'C'
    else:
      var = str(resto)
    return var
    

def convertToBase13(num):
  if num < 0:
      num2 = num * -1
  else:
      num2 = num
  string = ""
  resto = num2 % 13
  div = int(num2 / 13)
  print(resto)
  print(div)
  if resto == 0 and num != 0:
      string = '10'
      return string
  if num == 0:
      return 0
  while resto != 0:
    string += conditions(resto)
    resto = div % 13
    div = int(div / 13)
  if num < 0:
      string = "-" + string[::-1]
  else:
     string = string[::-1] 
  return string

