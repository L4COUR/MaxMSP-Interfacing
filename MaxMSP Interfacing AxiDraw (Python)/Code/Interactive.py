import sys

# defining X/Y for pen-up and pen-down
xlin = sys.argv[1]
ylin = sys.argv[2]
xmov = sys.argv[3]
ymov = sys.argv[4]


print("Pen-Down", xlin, ylin) #ad.lineto(x,y)

print("Pen-Up",xmov, ymov) #ad.moveto(x,y)
