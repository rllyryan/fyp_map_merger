from numba import jit
import time

@jit(nopython=True)
def looping_alot(n):

    for i in range(n):
        a = n ** n
    
    return

start = time.time()
looping_alot(10000)
end = time.time()
print(end - start)

start = time.time()
looping_alot(10000)
end = time.time()
print(end - start)