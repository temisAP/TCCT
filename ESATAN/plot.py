import pandas as pd
import numpy as np

filename = ['Ejemplo.csv', 'Ejemplo.csv']

for name in filename:

    data = pd.read_csv(name,delimiter=',')
    data.drop([0,2,3],inplace=True)
    print(data)


    T = data.to_numpy()
    print(T[1])


    fig = plt.figure()
    #
    plt.plot(xa*1e3,Ta1)
    plt.plot(xa*1e3,Ta2)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.legend(['Potencia puntual','Potencia uniforme'])
    plt.grid()
    plt.savefig(name)
    plt.close()
