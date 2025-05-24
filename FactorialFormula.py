# Given a number nn, write a formula that returns n!n!.

# In case you forgot the factorial formula, n!=n∗(n−1)∗(n−2)∗.....2∗1n!=n∗(n−1)∗(n−2)∗.....2∗1.

# For example, 5!=5∗4∗3∗2∗1=1205!=5∗4∗3∗2∗1=120 so we'd return 120.

# Assume is n is a non-negative integer.

def factorial(n):
  var = 1
  for i in range(1, n + 1):
      var = var * i
  return var
