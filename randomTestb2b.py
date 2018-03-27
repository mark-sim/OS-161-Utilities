import os
import sys
from random import randint

arr = ['p uw-testbin/vm-data1;', 'p uw-testbin/vm-data3;',
       'p uw-testbin/romemwrite;', 'p uw-testbin/vm-crash2;',
       'p testbin/sort;', 'p testbin/matmult;', 'p uw-testbin/vm-data1;']

if(len(sys.argv) != 2):
        print('Usage: python randomTestb2b.py numberOfTimesToRun')
        sys.exit(1)

runNumber = int(sys.argv[1])
cmd = ""

for i in range(0,runNumber):
        index = randint(0,6)
        cmd += arr[index]
cmd += 'q'

os.system('sys161 kernel ' + '"' + cmd + '"')
