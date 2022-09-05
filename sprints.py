def MyFunc(y):
    exist = True
    num = 0
    add = 0
    first = 0
    max = "no max"
    for x in y:
        if (x.isdigit()):
            exist = False
            if(int(x) % 2 == 0):
                add += int(x)
                num = num + 1
        elif (x.replace('.', '', 1).isdigit()) :
            exist = False
            if first == 0:
                max = float(x)
                first += 1
            elif (float(x) > max ):
                max = float(x) 
    
    if num != 0 or first != 0:
        return( str(add/num) +" , "+ str(max))
    if exist:
        return("0")



