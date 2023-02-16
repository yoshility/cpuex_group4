import os
"""with open("../memory_file/contest_5.txt","r") as f:
    pcs = f.readlines()
    num = len(pcs)
    pc_sort = []
    for i in range(num):
        tmp = pcs[i].replace(" ","")
        if (i == 0):
            print(0)
            pc_sort.append(0)
        elif ((len(tmp) > 0) & (tmp != "\n")):
            
            #elif (i > 1175389):
            if (pc_sort[-1] != tmp ):
                if (tmp != "0\n"):
                    pc_sort.append(tmp)
                    print(tmp)
                elif (pcs[i+1].replace(" ","") == "4\n"):
                    pc_sort.append(tmp)
                    print(tmp)
            else :
                continue    
    with open("base_80000.txt","r") as t:
        i = -1
        for line in t:
            i += 1;
            if (i <= 1):
                continue
            else :
                #cor = t.readline()
                if (line != pc_sort[i]):
                 print(i)
        #cor = t.readlines()
        #for i in range(2,len(pc_sort)):
            #if (cor[i] != pc_sort[i]):
             #   print(i)"""
with open("contest_5_sort.txt","r") as f:
    with open ("../result_file/2011.txt","r") as t:
        f1 = f.readlines()
        t1 = t.readlines()
        le = len(t1)
        
        for i in range(le):
            #print(f1[i])
            #t1 = t.readline()
            if (f1[i] == t1[i]):
                #print(f1)
                #print(t1)
                a = 1 + 1
            else :
                #continue
                print(i)
                print(f1[i])
                print(t1[i])
