
x = 0

def foo():
  while x < 100:
      x += 3
      if x < 10:
        continue
      if x >= 10:
        break
  else:
      x = 2
  return

print(x)

