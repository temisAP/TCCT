import os
import numpy as np
from numpy import genfromtxt
import matplotlib.pyplot as plt


figures_dir = './Figures/'
if not os.path.exists(figures_dir):
    os.makedirs(figures_dir)



results_dir = './Results/'

def read_result(name):
    my_data = genfromtxt(results_dir+str(name)+'.csv', delimiter=',')
    return my_data

x = read_result('xen')
y = read_result('yen')
T = read_result('Tet')
np.reshape(T,(len(x),len(y),int(1e5)+1))

fig = plt.figure()
p=np.array((len(x)))
for t in range(0,int(1e2),int(1e5)):
    p[:] = T[:,int(len(y)/2),t]
    plt.plot(x,p)

plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
h.set_rotation(0)
plt.title('Distribución de temperatura')
plt.legend(['Solución analítica','Solución numérica'])
plt.grid()
plt.show()
plt.close()
