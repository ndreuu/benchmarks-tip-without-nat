# import os


# os.system("./bin/starexec_run_default ./len.smt2 .")

import os
import subprocess
from os import listdir
from os.path import isfile, join


solved = [(os.path.splitext(f)[0]) for f in listdir("./outs") if isfile(join("./outs", f))]
onlyfiles = [f for f in listdir("./upd") if (isfile(join("./upd", f)) and (not (os.path.splitext(f)[0]) in solved))]



# print(solved[0])
# print(onlyfiles[0])
# print(len(onlyfiles))

# print(os.path.splitext(solved[0])[0])
# print(onlyfiles[0])

for v in onlyfiles:
    print(v)
    process = subprocess.Popen(['./bin/starexec_run_default', './upd/' + v, './outs'])
    try:
       print('Running in process', process.pid)
       process.wait(timeout=60)
    except subprocess.TimeoutExpired:
       print('Timed out - killing', process.pid)
       process.kill()
    print("Done")
    



#process = subprocess.Popen(['./bin/starexec_run_default', './len.smt2', '.'])
#try:
#    print('Running in process', process.pid)
#    process.wait(timeout=10)
#except subprocess.TimeoutExpired:
#    print('Timed out - killing', process.pid)
#    process.kill()
#print("Done")
